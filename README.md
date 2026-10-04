# helix-extras

A [nixvim](https://github.com/nix-community/nixvim)-like tool for [Helix](https://helix-editor.com).
It comes with a catalog of language servers already configured for Helix, and
lets you configure Helix itself from Nix instead of writing a
`.helix/languages.toml` in each project.

## Quick start

```nix
{
  inputs = {
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0.1.*";
    helix-extras.url = "https://flakehub.com/f/frectonz/helix-extras/*";
  };

  outputs = { nixpkgs, helix-extras, ... }:
    let
      system = "aarch64-darwin";
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ helix-extras.overlays.default ];
      };
      hx = pkgs.helix.withConfig {
        servers = {
          basedpyright.enable = true;
          ruff.enable = true;
          typos_lsp.enable = true;
          typos_lsp.languages = [ "python" ];
        };
        languages.python.auto-format = true;
        settings.editor.rulers = [ 100 ];
      };
    in {
      devShells.${system}.default = pkgs.mkShell {
        packages = [ hx ];
      };
    };
}
```

Or start a new project from the [template](./templates/default/flake.nix):

```
nix flake init -t "https://flakehub.com/f/frectonz/helix-extras/*"
```

## What you get

Running `hx` inside the shell writes the project's `.helix/languages.toml`
and `.helix/config.toml`. Your global Helix config stays untouched.

```toml
[[language]]
name = "python"
auto-format = true
language-servers = ["basedpyright", "ty", "ruff", "jedi", "pylsp", "typos_lsp"]

[language-server.basedpyright]
command = "/nix/store/...-basedpyright-1.39.8/bin/basedpyright-langserver"

[language-server.ruff]
command = "/nix/store/...-ruff-0.16.8/bin/ruff"

[language-server.typos_lsp]
command = "/nix/store/...-typos-lsp-0.1.56/bin/typos-lsp"
```

Each server's `command` is an absolute path into the Nix store, so nothing
needs to be on your `PATH`.

## Configuration

### Servers

A list of the built-in servers can be found in [the catalog](src/servers.nix).

```nix
servers.rust-analyzer.enable = true;
servers.rust-analyzer.config.check.command = "clippy";
```

| Option            | Meaning                                                          |
| ----------------- | ---------------------------------------------------------------- |
| `enable`          | Install the server and attach it to its languages.               |
| `languages`       | Attach to these languages instead. `"all"` means every language. |
| `config`          | Server settings, merged over the defaults.                       |
| `primary`         | Before Helix's defaults (`true`) or after (`false`).             |
| `package`         | Use another package, or `null` for one already on `PATH`.        |
| `command`         | The binary to run.                                               |
| `args`            | Arguments to the binary.                                         |
| `only-features`   | Use the server for these [features](https://docs.helix-editor.com/languages.html#configuring-language-servers-for-a-language) only. |
| `except-features` | Use the server for everything but these features.                |

Helix asks [the first server that supports a feature](https://docs.helix-editor.com/languages.html#configuring-language-servers-for-a-language),
so enabled servers go before Helix's defaults, except add-ons like linters and
spell checkers, which go after.

### Languages

`languages.<name>` takes any key from a Helix [`[[language]]`](https://docs.helix-editor.com/languages.html#language-configuration) entry:

```nix
languages.python.auto-format = true;
```

Languages Helix does not ship, such as roc, are included. For one that is not,
define it here with at least `scope` and `file-types`.

### Grammars

Syntax highlighting for languages Helix does not ship, from
[the catalog](src/grammars.nix):

```nix
grammars.roc.enable = true;
```

Or bring your own [tree-sitter](https://tree-sitter.github.io) grammar:

```nix
grammars.mylang = {
  enable = true;
  package = pkgs.tree-sitter.buildGrammar { ... };
  queries = ./queries/mylang;
};
```

`queries` defaults to the ones shipped in the package.

### Editor settings

`settings` is written to [`.helix/config.toml`](https://docs.helix-editor.com/editor.html):

```nix
settings.editor.rulers = [ 100 ];
```

## Escape hatches

- `HELIX_EXTRAS_SKIP=1` runs `hx` without touching `.helix/`.
- `ignoreInGit = false` skips writing `.helix/.gitignore`.
