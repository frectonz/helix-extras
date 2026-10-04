{
  pkgs,
  lib ? pkgs.lib,
}:
let
  inherit (lib)
    attrNames
    attrValues
    elem
    filter
    filterAttrs
    mapAttrs
    mapAttrsToList
    optionalAttrs
    recursiveUpdate
    unique
    concatMap
    concatStrings
    ;

  helixConfig = builtins.fromTOML (builtins.readFile "${pkgs.helix-unwrapped.src}/languages.toml");
  helixServers = helixConfig.language-server;
  helixLanguages = lib.listToAttrs (
    map (l: lib.nameValuePair l.name (l.language-servers or [ ])) helixConfig.language
  );

  extraLanguages = import ./languages.nix;
  defaults = {
    package = null;
    command = null;
    args = [ ];
    languages = [ ];
    config = { };
    primary = true;
  };
  catalog = mapAttrs (name: s: defaults // helixServers.${name} or { } // s) (
    mapAttrs (_: _: { }) helixServers // import ./servers.nix { inherit pkgs; }
  );
  grammarCatalog = import ./grammars.nix { inherit pkgs; };

  withConfig =
    {
      servers ? { },
      grammars ? { },
      languages ? { },
      settings ? { },
      ignoreInGit ? true,
    }:
    let
      knownLanguages = attrNames helixLanguages ++ attrNames extraLanguages ++ attrNames languages;
      resolve =
        name: user:
        let
          base = catalog.${name} or defaults;
          s = {
            inherit name;
          }
          // base
          // removeAttrs user [ "enable" ]
          // {
            config = recursiveUpdate base.config (user.config or { });
          };
        in
        s // optionalAttrs (s.languages == "all") { languages = knownLanguages; };
      enabled = mapAttrs resolve (filterAttrs (_: s: s.enable or false) servers);
      enabledGrammars = mapAttrs (
        name: user:
        let
          g = grammarCatalog.${name} or { } // removeAttrs user [ "enable" ];
        in
        {
          package = null;
          queries = "${g.package}/queries";
        }
        // g
      ) (filterAttrs (_: g: g.enable or false) grammars);
      touched = unique (
        concatMap (s: s.languages) (attrValues enabled) ++ attrNames enabledGrammars ++ attrNames languages
      );

      languageEntry =
        lang:
        let
          hasFeatures = s: s ? only-features || s ? except-features;
          ref =
            s:
            if hasFeatures s then
              {
                inherit (s) name;
              }
              // optionalAttrs (s ? only-features) { inherit (s) only-features; }
              // optionalAttrs (s ? except-features) { inherit (s) except-features; }
            else
              s.name;
          helixDefaults = map (
            d:
            let
              s = enabled.${d.name or d} or null;
            in
            if s != null && hasFeatures s && elem lang s.languages then ref s else d
          ) (helixLanguages.${lang} or [ ]);
          helixNames = map (d: d.name or d) helixDefaults;
          attached = filter (s: elem lang s.languages && !(elem s.name helixNames)) (attrValues enabled);
          added = primary: map ref (filter (s: s.primary == primary) attached);
          changed = attached != [ ] || helixDefaults != helixLanguages.${lang} or [ ];
        in
        (extraLanguages.${lang} or { })
        // {
          name = lang;
        }
        // optionalAttrs changed {
          language-servers = added true ++ helixDefaults ++ added false;
        }
        // languages.${lang} or { };

      serverEntry =
        s:
        let
          known = helixServers.${s.name} or { };
          differsFromHelix = k: v: v != null && v != [ ] && v != { } && known.${k} or null != v;
        in
        filterAttrs differsFromHelix (
          removeAttrs s [
            "name"
            "package"
            "languages"
            "primary"
            "only-features"
            "except-features"
          ]
          // optionalAttrs (s.package != null && s.command != null) {
            command = lib.getExe' s.package s.command;
          }
        );

      generated = {
        language = filter (l: attrNames l != [ "name" ]) (map languageEntry touched);
        language-server = filterAttrs (_: v: v != { }) (mapAttrs (_: serverEntry) enabled);
      };
      toml = pkgs.formats.toml { };
      languagesToml = toml.generate "languages.toml" generated;
      configToml = if settings == { } then null else toml.generate "config.toml" settings;
      packages = filter (p: p != null) (mapAttrsToList (_: s: s.package) enabled);
      runtime =
        if enabledGrammars == { } then
          pkgs.helix.runtime
        else
          pkgs.runCommand "helix-runtime" { } (
            ''
              mkdir -p $out/grammars $out/queries
              ln -s ${pkgs.helix.runtime}/grammars/* $out/grammars
              ln -s ${pkgs.helix.runtime}/queries/* $out/queries
            ''
            + concatStrings (
              mapAttrsToList (name: g: ''
                ln -sf ${g.package}/parser $out/grammars/${name}.so
                ln -sfn ${g.queries} $out/queries/${name}
              '') enabledGrammars
            )
          );

      problems =
        map (s: "${s.name}: no command known, set servers.${s.name}.command") (
          filter (s: s.command == null) (attrValues enabled)
        )
        ++ map (s: "${s.name}: attaches to no language, set servers.${s.name}.languages") (
          filter (s: s.languages == [ ]) (attrValues enabled)
        )
        ++ map (name: "${name}: no grammar known, set grammars.${name}.package") (
          attrNames (filterAttrs (_: g: g.package == null) enabledGrammars)
        )
        ++ map (l: "unknown language '${l}', define it under languages.${l}") (
          filter (l: !(elem l knownLanguages)) touched
        );
    in
    assert lib.assertMsg (problems == [ ]) "helix-extras:\n  ${lib.concatStringsSep "\n  " problems}";
    pkgs.writeShellApplication {
      name = "hx";
      runtimeInputs = [ pkgs.coreutils ];
      text = ''
        languages_toml=${languagesToml}
        config_toml=${lib.optionalString (configToml != null) configToml}
        ignore_in_git=${lib.optionalString ignoreInGit "1"}
        hx=${lib.getExe pkgs.helix-unwrapped}
        export HELIX_RUNTIME=${runtime}
      ''
      + builtins.readFile ./wrapper.sh;
      derivationArgs.passthru = {
        inherit
          generated
          languagesToml
          configToml
          enabled
          packages
          runtime
          ;
      };
    };
in
{
  inherit withConfig;
  servers = catalog;
  grammars = grammarCatalog;
  languages = extraLanguages;
}
