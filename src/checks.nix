{ pkgs }:
let
  inherit (pkgs) lib;
  catalog = import ./servers.nix { inherit pkgs; };

  example = pkgs.helix.withConfig {
    servers = {
      tailwindcss-ls = {
        enable = true;
        package = null;
      };
      ruff = {
        enable = true;
        package = null;
      };
      basedpyright = {
        enable = true;
        package = null;
      };
      roc_ls = {
        enable = true;
        package = null;
      };
    };
    settings.editor.rulers = [ 100 ];
  };
  language = name: lib.findFirst (l: l.name == name) null example.generated.language;

  scenario =
    name:
    {
      given ? "",
      when,
      expect,
    }:
    pkgs.runCommand "helix-extras-${name}"
      {
        nativeBuildInputs = [
          example
          pkgs.git
        ];
      }
      ''
        export HOME=$TMPDIR
        mkdir -p $TMPDIR/project/src && cd $TMPDIR/project && git init -q && cd src
        ${given}
        ${when}
        ${expect}
        touch $out
      '';
in
{
  generates-expected-config =
    assert
      (language "html").language-servers == [
        "vscode-html-language-server"
        "superhtml"
        "tailwindcss-ls"
      ];
    assert
      (language "python").language-servers == [
        "basedpyright"
        "ty"
        "ruff"
        "jedi"
        "pylsp"
      ];
    assert (language "roc").scope == "source.roc";
    assert example.generated.language-server ? roc_ls;
    assert !(example.generated.language-server ? tailwindcss-ls);
    assert example.packages == [ ];
    assert
      (pkgs.helix.withConfig { servers.nil.enable = true; }).generated.language-server.nil.command
      == lib.getExe' pkgs.nil "nil";
    assert
      (lib.head
        (pkgs.helix.withConfig {
          servers.ruff = {
            enable = true;
            package = null;
            only-features = [ "format" ];
          };
        }).generated.language
      ).language-servers == [
        "ty"
        {
          name = "ruff";
          only-features = [ "format" ];
        }
        "jedi"
        "pylsp"
      ];
    example.languagesToml;

  links-generated-config = scenario "links-generated-config" {
    when = "hx --health python > health.txt";
    expect = ''
      grep -q basedpyright health.txt
      test -L ../.helix/languages.toml
      test -L ../.helix/config.toml
      test -f ../.helix/.gitignore
    '';
  };

  knows-bundled-language = scenario "knows-bundled-language" {
    when = "hx --health roc > health.txt";
    expect = "grep -q roc_ls health.txt";
  };

  keeps-hand-written-file = scenario "keeps-hand-written-file" {
    given = ''
      mkdir ../.helix
      touch ../.helix/languages.toml
    '';
    when = "hx --health python 2> err.txt > /dev/null";
    expect = ''
      grep -q 'leaving it alone' err.txt
      test ! -L ../.helix/languages.toml
    '';
  };

  every-server-has-a-package = pkgs.writeText "helix-extras-packages" (
    lib.concatMapStringsSep "\n" (
      name:
      let
        raw = catalog.${name};
        s = pkgs.helix-extras.servers.${name};
      in
      assert lib.isDerivation raw.package;
      assert lib.isList raw.languages;
      assert lib.isString s.command;
      "${name} ${s.command} ${raw.package.name}"
    ) (lib.attrNames catalog)
  );

  every-server-can-be-enabled =
    (pkgs.helix.withConfig {
      servers = lib.mapAttrs (_: _: {
        enable = true;
        package = null;
      }) (lib.filterAttrs (_: s: s.languages != [ ]) catalog);
    }).languagesToml;
}
