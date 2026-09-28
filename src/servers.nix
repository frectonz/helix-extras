{ pkgs, ... }:
{
  aiken = {
    package = pkgs.aiken;
    command = "aiken";
    args = [ "lsp" ];
    languages = [ "aiken" ];
  };
  air = {
    primary = false;
    package = pkgs.air-formatter;
    command = "air";
    args = [ "language-server" ];
    languages = [ "r" ];
  };
  alloy_ls = {
    package = pkgs.grafana-alloy;
    command = "alloy";
    args = [ "lsp" ];
    languages = [ "alloy" ];
  };
  als = {
    package = pkgs.haskellPackages.agda-language-server;
    languages = [ "agda" ];
  };
  amber-lsp = {
    package = pkgs.amber-lsp;
    languages = [ "amber" ];
  };
  ameba-ls = {
    primary = false;
    package = pkgs.ameba-ls;
    languages = [ "crystal" ];
  };
  angular = {
    primary = false;
    package = pkgs.angular-language-server;
    languages = [
      "typescript"
      "html"
      "tsx"
    ];
  };
  ansible-language-server = {
    package = pkgs.ansible-language-server;
    languages = [ "yaml" ];
  };
  arduino_language_server = {
    package = pkgs.arduino-language-server;
    command = "arduino-language-server";
    languages = [ "arduino" ];
  };
  asm-lsp = {
    package = pkgs.asm-lsp;
    languages = [
      "nasm"
      "gas"
    ];
  };
  ast_grep = {
    primary = false;
    package = pkgs.ast-grep;
    command = "ast-grep";
    args = [ "lsp" ];
    languages = [
      "bash"
      "c"
      "cpp"
      "c-sharp"
      "css"
      "elixir"
      "go"
      "haskell"
      "html"
      "java"
      "javascript"
      "jsx"
      "json"
      "kotlin"
      "lua"
      "nix"
      "php"
      "python"
      "ruby"
      "rust"
      "scala"
      "solidity"
      "swift"
      "typescript"
      "tsx"
      "yaml"
    ];
  };
  astro-ls = {
    package = pkgs.astro-language-server;
    languages = [ "astro" ];
  };
  atlas = {
    package = pkgs.atlas;
    command = "atlas";
    args = [
      "tool"
      "lsp"
      "--stdio"
    ];
    languages = [ "atlas" ];
  };
  atopile = {
    package = pkgs.atopile;
    command = "ato";
    args = [
      "lsp"
      "start"
    ];
    languages = [ "ato" ];
  };
  autotools_ls = {
    package = pkgs.autotools-language-server;
    command = "autotools-language-server";
    languages = [ "make" ];
  };
  awk-language-server = {
    package = pkgs.awk-language-server;
    languages = [ "awk" ];
  };
  ballerina = {
    package = pkgs.ballerina;
    command = "bal";
    args = [ "start-language-server" ];
    languages = [ "ballerina" ];
  };
  basedpyright = {
    package = pkgs.basedpyright;
    languages = [ "python" ];
  };
  bash-language-server = {
    package = pkgs.bash-language-server;
    languages = [
      "bash"
      "pkgbuild"
    ];
  };
  beancount-language-server = {
    package = pkgs.beancount-language-server;
    languages = [ "beancount" ];
  };
  bicep-langserver = {
    package = pkgs.bicep-lsp;
    command = "Bicep.LangServer";
    languages = [ "bicep" ];
  };
  biome = {
    primary = false;
    package = pkgs.biome;
    command = "biome";
    args = [ "lsp-proxy" ];
    languages = [
      "astro"
      "css"
      "graphql"
      "html"
      "javascript"
      "jsx"
      "json"
      "jsonc"
      "svelte"
      "typescript"
      "tsx"
      "vue"
    ];
  };
  bitbake-language-server = {
    package = pkgs.bitbake-language-server;
    languages = [ "bitbake" ];
  };
  blueprint-compiler = {
    package = pkgs.blueprint-compiler;
    languages = [ "blueprint" ];
  };
  bright_script = {
    package = pkgs.bsc;
    command = "bsc";
    args = [
      "--lsp"
      "--stdio"
    ];
    languages = [ "brightscript" ];
  };
  brioche = {
    package = pkgs.brioche;
    command = "brioche";
    args = [ "lsp" ];
    languages = [ "brioche" ];
  };
  buck2 = {
    package = pkgs.buck2;
    command = "buck2";
    args = [ "lsp" ];
    languages = [ "starlark" ];
  };
  buf = {
    primary = false;
    package = pkgs.buf;
    languages = [ "protobuf" ];
  };
  c3_lsp = {
    package = pkgs.c3-lsp;
    command = "c3lsp";
    languages = [ "c3" ];
  };
  ccls = {
    package = pkgs.ccls;
    command = "ccls";
    languages = [
      "c"
      "cpp"
    ];
  };
  clangd = {
    package = pkgs.clang-tools;
    languages = [
      "c"
      "cpp"
      "opencl"
    ];
  };
  clojure-lsp = {
    package = pkgs.clojure-lsp;
    languages = [ "clojure" ];
  };
  cmake-language-server = {
    package = pkgs.cmake-language-server;
    languages = [ "cmake" ];
  };
  codebook = {
    primary = false;
    package = pkgs.codebook;
    command = "codebook-lsp";
    args = [ "serve" ];
    languages = [
      "c"
      "css"
      "git-commit"
      "go"
      "haskell"
      "html"
      "java"
      "javascript"
      "jsx"
      "lua"
      "markdown"
      "php"
      "python"
      "ruby"
      "rust"
      "swift"
      "toml"
      "typescript"
      "tsx"
      "zig"
    ];
  };
  codeql = {
    package = pkgs.codeql;
    languages = [ "codeql" ];
  };
  copilot = {
    primary = false;
    package = pkgs.copilot-language-server;
    command = "copilot-language-server";
    args = [ "--stdio" ];
    languages = [ ];
    config = {
      editorInfo = {
        name = "Neovim";
        version = "table: 0x0104f91db0";
      };
      editorPluginInfo = {
        name = "Neovim";
        version = "table: 0x0104f99ee8";
      };
      telemetry = {
        telemetryLevel = "all";
      };
    };
  };
  coq_lsp = {
    package = pkgs.coqPackages.coq-lsp;
    command = "coq-lsp";
    languages = [ "coq" ];
  };
  crystalline = {
    package = pkgs.crystalline;
    languages = [ "crystal" ];
  };
  cs = {
    package = pkgs.smithy-language-server;
    languages = [ "smithy" ];
  };
  csharp-ls = {
    package = pkgs.csharp-ls;
    languages = [ "c-sharp" ];
  };
  css_variables = {
    primary = false;
    package = pkgs.css-variables-language-server;
    command = "css-variables-language-server";
    args = [ "--stdio" ];
    languages = [
      "css"
      "scss"
    ];
    config = {
      cssVariables = {
        blacklistFolders = [
          "**/.cache"
          "**/.DS_Store"
          "**/.git"
          "**/.hg"
          "**/.next"
          "**/.svn"
          "**/bower_components"
          "**/CVS"
          "**/dist"
          "**/node_modules"
          "**/tests"
          "**/tmp"
        ];
        lookupFiles = [
          "**/*.less"
          "**/*.scss"
          "**/*.sass"
          "**/*.css"
        ];
      };
    };
  };
  ctags_lsp = {
    primary = false;
    package = pkgs.ctags-lsp;
    command = "ctags-lsp";
    languages = [ ];
  };
  cue = {
    package = pkgs.cue;
    command = "cue";
    args = [ "lsp" ];
    languages = [ "cue" ];
  };
  cuelsp = {
    package = pkgs.cuelsp;
    languages = [ "cue" ];
  };
  dafny = {
    package = pkgs.dafny;
    command = "dafny";
    args = [ "server" ];
    languages = [ "dafny" ];
  };
  dart = {
    package = pkgs.dart;
    languages = [ "dart" ];
  };
  denols = {
    package = pkgs.deno;
    command = "deno";
    args = [ "lsp" ];
    languages = [
      "javascript"
      "jsx"
      "typescript"
      "tsx"
    ];
    config = {
      deno = {
        enable = true;
        suggest = {
          imports = {
            hosts = {
              "https://deno.land" = true;
            };
          };
        };
      };
    };
  };
  dexter = {
    package = pkgs.dexter;
    command = "dexter";
    args = [ "lsp" ];
    languages = [
      "elixir"
      "eex"
      "heex"
    ];
    config = {
      followDelegates = true;
    };
  };
  dhall-lsp-server = {
    package = pkgs.dhall-lsp-server;
    languages = [ "dhall" ];
  };
  diagnosticls = {
    primary = false;
    package = pkgs.diagnostic-languageserver;
    command = "diagnostic-languageserver";
    args = [ "--stdio" ];
    languages = [ ];
  };
  digestif = {
    package = pkgs.luaPackages.digestif;
    command = "digestif";
    languages = [ "latex" ];
  };
  docker-compose-langserver = {
    package = pkgs.docker-compose-language-service;
    languages = [ "docker-compose" ];
  };
  docker-langserver = {
    package = pkgs.dockerfile-language-server;
    languages = [ "dockerfile" ];
  };
  docker_language_server = {
    package = pkgs.docker-language-server;
    command = "docker-language-server";
    args = [
      "start"
      "--stdio"
    ];
    languages = [
      "dockerfile"
      "docker-compose"
    ];
  };
  dolmenls = {
    package = pkgs.ocamlPackages.dolmen_lsp;
    command = "dolmenls";
    languages = [
      "smt2"
      "tptp"
      "zf"
    ];
  };
  dot-language-server = {
    package = pkgs.dot-language-server;
    languages = [ "dot" ];
  };
  dprint = {
    primary = false;
    package = pkgs.dprint;
    command = "dprint";
    args = [ "lsp" ];
    languages = [
      "javascript"
      "jsx"
      "typescript"
      "tsx"
      "json"
      "jsonc"
      "markdown"
      "python"
      "toml"
      "rust"
      "graphql"
    ];
  };
  dts-lsp = {
    package = pkgs.dts-lsp;
    languages = [ "devicetree" ];
  };
  earthlyls = {
    package = pkgs.earthlyls;
    languages = [ "earthfile" ];
  };
  efm = {
    primary = false;
    package = pkgs.efm-langserver;
    command = "efm-langserver";
    languages = [ ];
  };
  elixir-ls = {
    package = pkgs.elixir-ls;
    languages = [
      "elixir"
      "heex"
    ];
  };
  elm-language-server = {
    package = pkgs.elmPackages.elm-language-server;
    languages = [ "elm" ];
  };
  elp = {
    package = pkgs.erlang-language-platform;
    languages = [ "erlang" ];
  };
  elvish = {
    package = pkgs.elvish;
    languages = [ "elvish" ];
  };
  ember-language-server = {
    package = pkgs.ember-language-server;
    languages = [
      "glimmer"
      "gjs"
      "gts"
    ];
  };
  emmet_language_server = {
    primary = false;
    package = pkgs.emmet-language-server;
    command = "emmet-language-server";
    args = [ "--stdio" ];
    languages = [
      "astro"
      "css"
      "erb"
      "html"
      "htmldjango"
      "jsx"
      "scss"
      "svelte"
      "tsx"
      "vue"
    ];
  };
  emmet_ls = {
    primary = false;
    package = pkgs.emmet-ls;
    command = "emmet-ls";
    args = [ "--stdio" ];
    languages = [
      "astro"
      "css"
      "erb"
      "html"
      "htmldjango"
      "jsx"
      "pug"
      "scss"
      "svelte"
      "templ"
      "tsx"
      "vue"
    ];
  };
  emmylua_ls = {
    package = pkgs.emmylua-ls;
    command = "emmylua_ls";
    languages = [ "lua" ];
    config = {
      emmylua = {
        hint = {
          enable = true;
        };
        codeLens = {
          enable = true;
        };
      };
    };
  };
  erg_language_server = {
    package = pkgs.erg;
    command = "erg";
    args = [ "--language-server" ];
    languages = [ "erg" ];
  };
  expert = {
    package = pkgs.beamPackages.expert;
    command = "expert";
    args = [ "--stdio" ];
    languages = [
      "elixir"
      "eex"
      "heex"
    ];
  };
  fennel-ls = {
    package = pkgs.fennel-ls;
    languages = [ "fennel" ];
  };
  fish-lsp = {
    package = pkgs.fish-lsp;
    languages = [ "fish" ];
  };
  flow = {
    package = pkgs.flow;
    command = "flow";
    args = [ "lsp" ];
    languages = [
      "javascript"
      "jsx"
    ];
  };
  fortitude = {
    package = pkgs.fortitude;
    command = "fortitude";
    args = [ "server" ];
    languages = [ "fortran" ];
  };
  fortls = {
    package = pkgs.fortls;
    languages = [ "fortran" ];
  };
  fs_watcher_lsp = {
    primary = false;
    package = pkgs.fs-watcher-lsp;
    command = "fs_watcher_lsp";
    languages = [ ];
  };
  fsharp-ls = {
    package = pkgs.fsautocomplete;
    languages = [ "fsharp" ];
  };
  fstar = {
    package = pkgs.fstar;
    command = "fstar.exe";
    args = [ "--lsp" ];
    languages = [ "fstar" ];
  };
  futhark_lsp = {
    package = pkgs.futhark;
    command = "futhark";
    args = [ "lsp" ];
    languages = [ "futhark" ];
  };
  ginko_ls = {
    package = pkgs.ginko;
    command = "ginko_ls";
    languages = [ "devicetree" ];
  };
  gitlab_ci_ls = {
    primary = false;
    package = pkgs.gitlab-ci-ls;
    command = "gitlab-ci-ls";
    languages = [ "yaml" ];
    config = {
      cache_path = "/.cache/gitlab-ci-ls/";
      log_path = "/.cache/gitlab-ci-ls//log/gitlab-ci-ls.log";
    };
  };
  glasgow = {
    package = pkgs.glasgow;
    command = "glasgow";
    languages = [ "wgsl" ];
  };
  gleam = {
    package = pkgs.gleam;
    languages = [ "gleam" ];
  };
  glsl_analyzer = {
    package = pkgs.glsl_analyzer;
    languages = [ "glsl" ];
  };
  glslls = {
    package = pkgs.glslls;
    command = "glslls";
    args = [ "--stdin" ];
    languages = [ "glsl" ];
  };
  golangci-lint-lsp = {
    primary = false;
    package = pkgs.golangci-lint-langserver;
    languages = [ "go" ];
  };
  gopls = {
    package = pkgs.gopls;
    languages = [
      "go"
      "gomod"
      "gotmpl"
      "gowork"
    ];
  };
  graphql-language-service = {
    package = pkgs.graphql-language-service-cli;
    languages = [ "graphql" ];
  };
  groovyls = {
    package = pkgs.groovy-language-server;
    command = "groovy-language-server";
    languages = [ "groovy" ];
  };
  guile_ls = {
    package = pkgs.guile-lsp-server;
    command = "guile-lsp-server";
    languages = [ "scheme" ];
  };
  harper-ls = {
    primary = false;
    package = pkgs.harper;
    languages = [
      "c"
      "cpp"
      "c-sharp"
      "git-commit"
      "go"
      "html"
      "java"
      "javascript"
      "lua"
      "markdown"
      "nix"
      "python"
      "ruby"
      "rust"
      "swift"
      "latex"
      "toml"
      "typescript"
      "tsx"
      "haskell"
      "cmake"
      "typst"
      "php"
      "dart"
      "clojure"
      "bash"
    ];
  };
  haskell-language-server = {
    package = pkgs.haskell-language-server;
    languages = [
      "haskell"
      "cabal"
    ];
  };
  helm_ls = {
    package = pkgs.helm-ls;
    languages = [ "helm" ];
  };
  htmx = {
    primary = false;
    package = pkgs.htmx-lsp;
    command = "htmx-lsp";
    languages = [
      "astro"
      "blade"
      "clojure"
      "htmldjango"
      "eex"
      "elixir"
      "ejs"
      "erb"
      "gotmpl"
      "glimmer"
      "html"
      "heex"
      "pug"
      "markdown"
      "nunjucks"
      "php"
      "twig"
      "javascript"
      "jsx"
      "rescript"
      "typescript"
      "tsx"
      "vue"
      "svelte"
      "templ"
    ];
  };
  hyprls = {
    package = pkgs.hyprls;
    languages = [ "hyprlang" ];
  };
  idris2-lsp = {
    package = pkgs.idris2Packages.idris2Lsp;
    languages = [ "idris" ];
  };
  intelephense = {
    package = pkgs.intelephense;
    languages = [ "php" ];
  };
  java_language_server = {
    package = pkgs.java-language-server;
    command = "java-language-server";
    languages = [ "java" ];
  };
  jdtls = {
    package = pkgs.jdt-language-server;
    languages = [ "java" ];
  };
  jedi = {
    package = pkgs.python3Packages.jedi-language-server;
    languages = [ "python" ];
  };
  jinja_lsp = {
    package = pkgs.jinja-lsp;
    command = "jinja-lsp";
    languages = [ "jinja" ];
  };
  jq-lsp = {
    package = pkgs.jq-lsp;
    languages = [ "jq" ];
  };
  jsonnet-language-server = {
    package = pkgs.jsonnet-language-server;
    languages = [ "jsonnet" ];
  };
  just-lsp = {
    package = pkgs.just-lsp;
    languages = [ "just" ];
  };
  kcl = {
    package = pkgs.kcl-language-server;
    command = "kcl-language-server";
    languages = [ "kcl" ];
  };
  koka = {
    package = pkgs.koka;
    languages = [ "koka" ];
  };
  kotlin-language-server = {
    package = pkgs.kotlin-language-server;
    languages = [ "kotlin" ];
  };
  koto-ls = {
    package = pkgs.koto-ls;
    languages = [ "koto" ];
  };
  lean = {
    package = pkgs.lean4;
    languages = [ "lean" ];
  };
  lemminx = {
    package = pkgs.lemminx;
    command = "lemminx";
    languages = [ "xml" ];
  };
  lsp_ai = {
    primary = false;
    package = pkgs.lsp-ai;
    command = "lsp-ai";
    languages = [ ];
    config = {
      memory = {
        file_store = [ ];
      };
      models = [ ];
    };
  };
  ltex-ls = {
    primary = false;
    package = pkgs.ltex-ls;
    languages = [
      "bibtex"
      "git-commit"
      "markdown"
      "org"
      "latex"
      "rst"
      "quarto"
      "rmarkdown"
      "html"
      "mail"
    ];
  };
  ltex-ls-plus = {
    primary = false;
    package = pkgs.ltex-ls-plus;
    languages = [
      "bibtex"
      "git-commit"
      "html"
      "markdown"
      "org"
      "latex"
      "quarto"
      "mail"
      "rmarkdown"
      "rst"
      "typst"
    ];
  };
  lua-language-server = {
    package = pkgs.lua-language-server;
    languages = [ "lua" ];
  };
  luau = {
    package = pkgs.luau-lsp;
    languages = [ "luau" ];
  };
  markdown-oxide = {
    package = pkgs.markdown-oxide;
    languages = [ "markdown" ];
  };
  marksman = {
    package = pkgs.marksman;
    languages = [ "markdown" ];
  };
  matlab_ls = {
    package = pkgs.matlab-language-server;
    command = "matlab-language-server";
    args = [ "--stdio" ];
    languages = [ "matlab" ];
    config = {
      MATLAB = {
        indexWorkspace = true;
        installPath = "";
        matlabConnectionTiming = "onStart";
        telemetry = true;
      };
    };
  };
  mdx_analyzer = {
    package = pkgs.mdx-language-server;
    command = "mdx-language-server";
    args = [ "--stdio" ];
    languages = [ "markdown" ];
    config = {
      typescript = [ ];
    };
  };
  mesonlsp = {
    package = pkgs.mesonlsp;
    languages = [ "meson" ];
  };
  metals = {
    package = pkgs.metals;
    languages = [ "scala" ];
  };
  microcad_lsp = {
    package = pkgs.microcad;
    command = "microcad-lsp";
    args = [ "--stdio" ];
    languages = [ "microcad" ];
  };
  millet = {
    package = pkgs.millet;
    command = "millet";
    languages = [ "sml" ];
  };
  mint = {
    package = pkgs.mint;
    languages = [ "mint" ];
  };
  mlir_lsp_server = {
    package = pkgs.llvmPackages.mlir;
    command = "mlir-lsp-server";
    languages = [ "mlir" ];
  };
  mlir_pdll_lsp_server = {
    package = pkgs.llvmPackages.mlir;
    command = "mlir-pdll-lsp-server";
    languages = [ "pdll" ];
  };
  mojo = {
    package = pkgs.mojo-bin;
    command = "mojo-lsp-server";
    languages = [ "mojo" ];
  };
  mpls = {
    primary = false;
    package = pkgs.mpls;
    command = "mpls";
    args = [
      "--theme"
      "dark"
      "--enable-emoji"
      "--enable-footnotes"
      "--no-auto"
    ];
    languages = [ "markdown" ];
  };
  muon = {
    package = pkgs.muon;
    command = "muon";
    args = [
      "analyze"
      "lsp"
    ];
    languages = [ "meson" ];
  };
  neocmakelsp = {
    package = pkgs.neocmakelsp;
    languages = [ "cmake" ];
  };
  nginx_language_server = {
    package = pkgs.nginx-language-server;
    command = "nginx-language-server";
    languages = [ "nginx" ];
  };
  nil = {
    package = pkgs.nil;
    languages = [ "nix" ];
  };
  nimlangserver = {
    package = pkgs.nimlangserver;
    languages = [ "nim" ];
  };
  nimlsp = {
    package = pkgs.nimlsp;
    languages = [ "nim" ];
  };
  nixd = {
    package = pkgs.nixd;
    languages = [ "nix" ];
  };
  nls = {
    package = pkgs.nls;
    languages = [ "nickel" ];
  };
  nu-lsp = {
    package = pkgs.nushell;
    languages = [ "nu" ];
  };
  ocamllsp = {
    package = pkgs.ocamlPackages.ocaml-lsp;
    languages = [
      "ocaml"
      "ocaml-interface"
    ];
  };
  ols = {
    package = pkgs.ols;
    languages = [ "odin" ];
  };
  omnisharp = {
    package = pkgs.omnisharp-roslyn;
    command = "omnisharp";
    args = [
      "-z"
      "--hostPID"
      ""
      "DotNet:enablePackageRestore=false"
      "--encoding"
      "utf-8"
      "--languageserver"
    ];
    languages = [ "c-sharp" ];
    config = {
      FormattingOptions = {
        EnableEditorConfigSupport = true;
      };
      MsBuild = [ ];
      RenameOptions = [ ];
      RoslynExtensionsOptions = [ ];
      Sdk = {
        IncludePrereleases = true;
      };
    };
  };
  openscad-lsp = {
    package = pkgs.openscad-lsp;
    languages = [ "openscad" ];
  };
  oxfmt = {
    primary = false;
    package = pkgs.oxfmt;
    command = "oxfmt";
    args = [ "--lsp" ];
    languages = [
      "javascript"
      "jsx"
      "typescript"
      "tsx"
      "toml"
      "json"
      "jsonc"
      "json5"
      "yaml"
      "html"
      "vue"
      "glimmer"
      "css"
      "scss"
      "graphql"
      "markdown"
      "svelte"
    ];
  };
  oxlint = {
    primary = false;
    package = pkgs.oxlint;
    command = "oxlint";
    args = [ "--lsp" ];
    languages = [
      "javascript"
      "jsx"
      "typescript"
      "tsx"
      "vue"
      "svelte"
      "astro"
    ];
  };
  panache = {
    package = pkgs.panache;
    command = "panache";
    args = [ "lsp" ];
    languages = [
      "markdown"
      "quarto"
      "rmarkdown"
    ];
  };
  perlnavigator = {
    package = pkgs.perlnavigator;
    languages = [ "perl" ];
  };
  perlpls = {
    package = pkgs.perlPackages.PLS;
    command = "pls";
    languages = [ "perl" ];
    config = {
      perl = {
        perlcritic = {
          enabled = false;
        };
        syntax = {
          enabled = true;
        };
      };
    };
  };
  pest-language-server = {
    package = pkgs.pest-ide-tools;
    languages = [ "pest" ];
  };
  phan = {
    primary = false;
    package = pkgs.php84Packages.phan;
    command = "phan";
    args = [
      "-m"
      "json"
      "--no-color"
      "--no-progress-bar"
      "-x"
      "-u"
      "-S"
      "--language-server-on-stdin"
      "--allow-polyfill-parser"
    ];
    languages = [ "php" ];
  };
  phpactor = {
    package = pkgs.phpactor;
    command = "phpactor";
    args = [ "language-server" ];
    languages = [ "php" ];
  };
  phpantom_lsp = {
    package = pkgs.phpantom-lsp;
    command = "phpantom_lsp";
    languages = [
      "php"
      "blade"
    ];
  };
  pkl-lsp = {
    package = pkgs.pkl-lsp;
    languages = [ "pkl" ];
  };
  please = {
    package = pkgs.please;
    command = "plz";
    args = [
      "tool"
      "lps"
    ];
    languages = [ "starlark" ];
  };
  postgres_lsp = {
    package = pkgs.postgres-lsp;
    command = "postgres-language-server";
    args = [ "lsp-proxy" ];
    languages = [ "sql" ];
  };
  prisma-language-server = {
    package = pkgs.prisma-language-server;
    languages = [ "prisma" ];
  };
  protols = {
    package = pkgs.protols;
    languages = [ "protobuf" ];
  };
  psalm = {
    primary = false;
    package = pkgs.php84Packages.psalm;
    command = "psalm";
    args = [ "--language-server" ];
    languages = [ "php" ];
  };
  pylsp = {
    package = pkgs.python3Packages.python-lsp-server;
    languages = [
      "python"
      "snakemake"
    ];
  };
  pylyzer = {
    package = pkgs.pylyzer;
    languages = [ "python" ];
  };
  pyrefly = {
    package = pkgs.pyrefly;
    languages = [ "python" ];
  };
  pyright = {
    package = pkgs.pyright;
    languages = [ "python" ];
  };
  qmlls = {
    package = pkgs.qt6.qtdeclarative;
    languages = [ "qml" ];
  };
  quick_lint_js = {
    primary = false;
    package = pkgs.quick-lint-js;
    command = "quick-lint-js";
    args = [ "--lsp-server" ];
    languages = [
      "javascript"
      "typescript"
    ];
  };
  r = {
    package = pkgs.rPackages.languageserver;
    languages = [ "r" ];
  };
  regal = {
    primary = false;
    package = pkgs.regal;
    command = "regal";
    args = [ "language-server" ];
    languages = [ "rego" ];
  };
  regols = {
    package = pkgs.regols;
    languages = [ "rego" ];
  };
  rescript-language-server = {
    package = pkgs.rescript-language-server;
    languages = [ "rescript" ];
  };
  roc_ls = {
    package = pkgs.roc;
    command = "roc_language_server";
    languages = [ "roc" ];
  };
  roslyn_ls = {
    package = pkgs.roslyn-ls;
    command = "roslyn-language-server";
    args = [ "--stdio" ];
    languages = [ "c-sharp" ];
    config = {
      "csharp|background_analysis" = {
        dotnet_analyzer_diagnostics_scope = "fullSolution";
        dotnet_compiler_diagnostics_scope = "fullSolution";
      };
      "csharp|code_lens" = {
        dotnet_enable_references_code_lens = true;
      };
      "csharp|completion" = {
        dotnet_provide_regex_completions = true;
        dotnet_show_completion_items_from_unimported_namespaces = true;
        dotnet_show_name_completion_suggestions = true;
      };
      "csharp|inlay_hints" = {
        csharp_enable_inlay_hints_for_implicit_object_creation = true;
        csharp_enable_inlay_hints_for_implicit_variable_types = true;
        csharp_enable_inlay_hints_for_lambda_parameter_types = true;
        csharp_enable_inlay_hints_for_types = true;
        dotnet_enable_inlay_hints_for_indexer_parameters = true;
        dotnet_enable_inlay_hints_for_literal_parameters = true;
        dotnet_enable_inlay_hints_for_object_creation_parameters = true;
        dotnet_enable_inlay_hints_for_other_parameters = true;
        dotnet_enable_inlay_hints_for_parameters = true;
        dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true;
        dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true;
        dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true;
      };
      "csharp|symbol_search" = {
        dotnet_search_reference_assemblies = true;
      };
    };
  };
  rubocop = {
    primary = false;
    package = pkgs.rubocop;
    command = "rubocop";
    args = [ "--lsp" ];
    languages = [ "ruby" ];
  };
  ruby-lsp = {
    package = pkgs.ruby-lsp;
    languages = [ "ruby" ];
  };
  ruff = {
    primary = false;
    package = pkgs.ruff;
    languages = [ "python" ];
  };
  rumdl = {
    primary = false;
    package = pkgs.rumdl;
    command = "rumdl";
    args = [ "server" ];
    languages = [ "markdown" ];
  };
  rune_languageserver = {
    package = pkgs.rune-languageserver;
    command = "rune-languageserver";
    languages = [ "rune" ];
  };
  rust-analyzer = {
    package = pkgs.rust-analyzer;
    languages = [ "rust" ];
  };
  serve-d = {
    package = pkgs.serve-d;
    languages = [ "d" ];
  };
  shopify_theme_ls = {
    package = pkgs.shopify-cli;
    command = "shopify";
    args = [
      "theme"
      "language-server"
    ];
    languages = [ "liquid" ];
  };
  slang_server = {
    package = pkgs.slang-server;
    command = "slang-server";
    languages = [ "verilog" ];
  };
  slangd = {
    package = pkgs.shader-slang;
    languages = [ "slang" ];
  };
  slint-lsp = {
    package = pkgs.slint-lsp;
    languages = [ "slint" ];
  };
  snyk_ls = {
    primary = false;
    package = pkgs.snyk;
    command = "snyk";
    args = [
      "language-server"
      "-l"
      "info"
    ];
    languages = [
      "apex"
      "c"
      "cpp"
      "c-sharp"
      "dart"
      "dockerfile"
      "elixir"
      "eex"
      "go"
      "gomod"
      "groovy"
      "helm"
      "java"
      "javascript"
      "json"
      "kotlin"
      "php"
      "python"
      "ruby"
      "rust"
      "scala"
      "swift"
      "hcl"
      "tfvars"
      "typescript"
      "yaml"
    ];
    config = {
      activateSnykCode = "false";
      activateSnykIac = "true";
      integrationName = "Neovim";
      integrationVersion = "table: 0x0105089ac8";
      trustedFolders = { };
      activateSnykOpenSource = "true";
    };
  };
  solargraph = {
    package = pkgs.rubyPackages.solargraph;
    languages = [ "ruby" ];
  };
  solc = {
    package = pkgs.solc;
    languages = [ "solidity" ];
  };
  solidity_ls = {
    package = pkgs.vscode-solidity-server;
    command = "vscode-solidity-server";
    args = [ "--stdio" ];
    languages = [ "solidity" ];
  };
  sourcekit-lsp = {
    package = pkgs.sourcekit-lsp;
    languages = [ "swift" ];
  };
  sourcepawn-studio = {
    package = pkgs.sourcepawn-studio;
    languages = [ "sourcepawn" ];
  };
  spectral = {
    primary = false;
    package = pkgs.spectral-language-server;
    command = "spectral-language-server";
    args = [ "--stdio" ];
    languages = [
      "yaml"
      "json"
    ];
    config = {
      enable = true;
      run = "onType";
      validateLanguages = [
        "yaml"
        "json"
        "yml"
      ];
    };
  };
  sqls = {
    package = pkgs.sqls;
    command = "sqls";
    languages = [ "sql" ];
  };
  sqruff = {
    primary = false;
    package = pkgs.sqruff;
    command = "sqruff";
    args = [ "lsp" ];
    languages = [ "sql" ];
  };
  standardrb = {
    primary = false;
    package = pkgs.rubyPackages.standard;
    command = "standardrb";
    args = [ "--lsp" ];
    languages = [ "ruby" ];
  };
  starlark_rust = {
    package = pkgs.starlark;
    command = "starlark";
    args = [ "--lsp" ];
    languages = [ "starlark" ];
  };
  starpls = {
    package = pkgs.starpls;
    languages = [ "starlark" ];
  };
  statix = {
    primary = false;
    package = pkgs.statix;
    command = "statix";
    args = [
      "check"
      "--stdin"
    ];
    languages = [ "nix" ];
  };
  stylelint_lsp = {
    primary = false;
    package = pkgs.stylelint-lsp;
    command = "stylelint-language-server";
    args = [ "--stdio" ];
    languages = [
      "astro"
      "css"
      "html"
      "scss"
      "vue"
    ];
    config = {
      stylelint = {
        snippet = [
          "css"
          "postcss"
        ];
        validate = [
          "css"
          "postcss"
        ];
      };
    };
  };
  stylua = {
    package = pkgs.stylua;
    command = "stylua";
    args = [ "--lsp" ];
    languages = [ "lua" ];
  };
  superhtml = {
    package = pkgs.superhtml;
    languages = [
      "html"
      "htmldjango"
    ];
  };
  svelteserver = {
    package = pkgs.svelte-language-server;
    languages = [ "svelte" ];
  };
  svls = {
    package = pkgs.svls;
    command = "svls";
    languages = [ "verilog" ];
  };
  swipl = {
    package = pkgs.swi-prolog;
    languages = [ "prolog" ];
  };
  syntax_tree = {
    primary = false;
    package = pkgs.rubyPackages.syntax_tree;
    command = "stree";
    args = [ "lsp" ];
    languages = [ "ruby" ];
  };
  systemd-lsp = {
    package = pkgs.systemd-lsp;
    languages = [ "systemd" ];
  };
  tabby_ml = {
    primary = false;
    package = pkgs.tabby-agent;
    command = "tabby-agent";
    args = [
      "--lsp"
      "--stdio"
    ];
    languages = [ ];
  };
  tailwindcss-ls = {
    primary = false;
    package = pkgs.tailwindcss-language-server;
    languages = [
      "astro"
      "blade"
      "clojure"
      "htmldjango"
      "eex"
      "elixir"
      "ejs"
      "erb"
      "gotmpl"
      "glimmer"
      "html"
      "heex"
      "pug"
      "markdown"
      "nunjucks"
      "php"
      "twig"
      "css"
      "scss"
      "javascript"
      "jsx"
      "rescript"
      "typescript"
      "tsx"
      "vue"
      "svelte"
      "templ"
    ];
  };
  taplo = {
    package = pkgs.taplo;
    languages = [ "toml" ];
  };
  tclsp = {
    package = pkgs.tclint;
    command = "tclsp";
    languages = [ "tcl" ];
  };
  teal-language-server = {
    package = pkgs.luaPackages.teal-language-server;
    languages = [ "teal" ];
  };
  templ = {
    package = pkgs.templ;
    languages = [ "templ" ];
  };
  terraform-ls = {
    package = pkgs.terraform-ls;
    languages = [
      "hcl"
      "tfvars"
    ];
  };
  terraform_lsp = {
    package = pkgs.terraform-lsp;
    command = "terraform-lsp";
    languages = [ "hcl" ];
  };
  texlab = {
    package = pkgs.texlab;
    languages = [
      "latex"
      "bibtex"
    ];
  };
  textlsp = {
    package = pkgs.textlsp;
    command = "textlsp";
    languages = [
      "latex"
      "org"
    ];
    config = {
      textLSP = {
        analysers = {
          languagetool = {
            enabled = true;
            check_text = {
              on_open = true;
              on_save = true;
              on_change = false;
            };
          };
        };
        documents = {
          org = {
            org_todo_keywords = [
              "TODO"
              "IN_PROGRESS"
              "DONE"
            ];
          };
        };
      };
    };
  };
  tflint = {
    primary = false;
    package = pkgs.tflint;
    command = "tflint";
    args = [ "--langserver" ];
    languages = [ "hcl" ];
  };
  thriftls = {
    package = pkgs.thrift-ls;
    command = "thriftls";
    languages = [ "thrift" ];
  };
  tilt_ls = {
    package = pkgs.tilt;
    command = "tilt";
    args = [
      "lsp"
      "start"
    ];
    languages = [ "starlark" ];
  };
  tinymist = {
    package = pkgs.tinymist;
    languages = [ "typst" ];
  };
  tofu_ls = {
    package = pkgs.tofu-ls;
    command = "tofu-ls";
    args = [ "serve" ];
    languages = [
      "hcl"
      "tfvars"
    ];
  };
  tombi = {
    package = pkgs.tombi;
    languages = [ "toml" ];
  };
  ts_query_ls = {
    package = pkgs.ts_query_ls;
    languages = [ "tsq" ];
  };
  tsc = {
    primary = false;
    package = pkgs.typescript;
    command = "tsc";
    args = [
      "--lsp"
      "--stdio"
    ];
    languages = [
      "javascript"
      "jsx"
      "typescript"
      "tsx"
    ];
    config = {
      "js/ts" = {
        inlayHints = {
          parameterTypes = {
            enabled = true;
          };
          variableTypes = {
            enabled = true;
          };
          propertyDeclarationTypes = {
            enabled = true;
          };
          functionLikeReturnTypes = {
            enabled = true;
          };
          enumMemberValues = {
            enabled = true;
          };
          parameterNames = {
            enabled = "literals";
            suppressWhenArgumentMatchesName = true;
          };
        };
        implementationsCodeLens = {
          showOnAllClassMethods = true;
          enabled = true;
          showOnInterfaceMethods = true;
        };
        referencesCodeLens = {
          enabled = true;
          showOnAllFunctions = true;
        };
      };
    };
  };
  ttags = {
    primary = false;
    package = pkgs.ttags;
    command = "ttags";
    args = [ "lsp" ];
    languages = [
      "ruby"
      "rust"
      "javascript"
      "haskell"
    ];
  };
  ty = {
    package = pkgs.ty;
    languages = [ "python" ];
  };
  typescript-language-server = {
    package = pkgs.typescript-language-server;
    languages = [
      "javascript"
      "jsx"
      "typescript"
      "tsx"
      "gjs"
      "gts"
    ];
  };
  typespec = {
    package = pkgs.typespec;
    languages = [ "typespec" ];
  };
  typos_lsp = {
    primary = false;
    package = pkgs.typos-lsp;
    command = "typos-lsp";
    languages = [ ];
  };
  uiua = {
    package = pkgs.uiua;
    command = "uiua";
    args = [ "lsp" ];
    languages = [ "uiua" ];
  };
  unison = {
    package = pkgs.netcat;
    command = "nc";
    args = [
      "localhost"
      "5757"
    ];
    languages = [ "unison" ];
  };
  vacuum = {
    package = pkgs.vacuum-go;
    command = "vacuum";
    args = [ "language-server" ];
    languages = [
      "yaml"
      "json"
    ];
  };
  vala-language-server = {
    package = pkgs.vala-language-server;
    languages = [ "vala" ];
  };
  vale-ls = {
    primary = false;
    package = pkgs.vale-ls;
    languages = [
      "asciidoc"
      "markdown"
      "latex"
      "rst"
      "html"
      "xml"
    ];
  };
  vectorcode_server = {
    primary = false;
    package = pkgs.vectorcode;
    command = "vectorcode-server";
    languages = [ ];
  };
  verible = {
    package = pkgs.verible;
    command = "verible-verilog-ls";
    languages = [ "verilog" ];
  };
  veridian = {
    package = pkgs.veridian;
    command = "veridian";
    languages = [ "verilog" ];
  };
  veryl_ls = {
    package = pkgs.veryl;
    command = "veryl-ls";
    languages = [ "veryl" ];
  };
  vhdl_ls = {
    package = pkgs.vhdl-ls;
    languages = [ "vhdl" ];
  };
  vimdoc_ls = {
    package = pkgs.vimdoc-language-server;
    command = "vimdoc-language-server";
    languages = [ "vimdoc" ];
  };
  vimls = {
    package = pkgs.vim-language-server;
    command = "vim-language-server";
    args = [ "--stdio" ];
    languages = [ "vim" ];
    config = {
      diagnostic = {
        enable = true;
      };
      indexes = {
        count = 3;
        gap = 100;
        projectRootPatterns = [
          "runtime"
          "nvim"
          ".git"
          "autoload"
          "plugin"
        ];
        runtimepath = true;
      };
      isNeovim = true;
      iskeyword = "@,48-57,_,192-255,-#";
      runtimepath = "";
      suggest = {
        fromRuntimepath = true;
        fromVimruntime = true;
      };
      vimruntime = "";
    };
  };
  vls = {
    package = pkgs.vlang;
    command = "v";
    args = [ "ls" ];
    languages = [ "v" ];
  };
  vscode-css-language-server = {
    package = pkgs.vscode-langservers-extracted;
    languages = [
      "css"
      "scss"
    ];
  };
  vscode-eslint-language-server = {
    primary = false;
    package = pkgs.vscode-langservers-extracted;
    languages = [
      "gjs"
      "gts"
    ];
  };
  vscode-html-language-server = {
    package = pkgs.vscode-langservers-extracted;
    languages = [
      "html"
      "htmldjango"
    ];
  };
  vscode-json-language-server = {
    package = pkgs.vscode-langservers-extracted;
    languages = [
      "json"
      "jsonc"
      "json-ld"
    ];
  };
  vsrocq = {
    package = pkgs.rocqPackages.vsrocq-language-server;
    command = "vsrocqtop";
    languages = [ "coq" ];
  };
  vtsls = {
    package = pkgs.vtsls;
    command = "vtsls";
    args = [ "--stdio" ];
    languages = [
      "javascript"
      "jsx"
      "typescript"
      "tsx"
    ];
    config = {
      hostInfo = "neovim";
    };
  };
  vuels = {
    package = pkgs.vue-language-server;
    languages = [ "vue" ];
  };
  wasm-language-tools = {
    package = pkgs.wasm-language-tools;
    languages = [ "wat" ];
  };
  wgsl-analyzer = {
    package = pkgs.wgsl-analyzer;
    languages = [ "wgsl" ];
  };
  yaml-language-server = {
    package = pkgs.yaml-language-server;
    languages = [
      "yaml"
      "docker-compose"
    ];
  };
  zizmor = {
    package = pkgs.zizmor;
    command = "zizmor";
    args = [ "--lsp" ];
    languages = [ "yaml" ];
  };
  zk = {
    primary = false;
    package = pkgs.zk;
    command = "zk";
    args = [ "lsp" ];
    languages = [ "markdown" ];
  };
  zls = {
    package = pkgs.zls;
    languages = [ "zig" ];
  };
  zuban = {
    package = pkgs.zuban;
    command = "zuban";
    args = [ "server" ];
    languages = [ "python" ];
  };
}
