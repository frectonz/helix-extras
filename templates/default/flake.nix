{
  inputs = {
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0.1.*";
    helix-extras.url = "https://flakehub.com/f/frectonz/helix-extras/*";
  };

  outputs =
    { nixpkgs, helix-extras, ... }:
    let
      forAllSystems =
        fn:
        nixpkgs.lib.genAttrs [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" ] (
          system:
          fn (
            import nixpkgs {
              inherit system;
              overlays = [ helix-extras.overlays.default ];
            }
          )
        );
    in
    {
      devShells = forAllSystems (pkgs: {
        default = pkgs.mkShell {
          packages = [
            (pkgs.helix.withConfig {
              servers = {
                # rust-analyzer.enable = true;
                # rust-analyzer.config.check.command = "clippy";
                # typos_lsp.enable = true;
                # typos_lsp.languages = "all";
              };
              # languages.rust.auto-format = true;
              # settings.editor.rulers = [ 100 ];
            })
          ];
        };
      });
    };
}
