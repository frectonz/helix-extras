{
  inputs = {
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0.1.*";
  };

  outputs =
    {
      self,
      nixpkgs,
    }:
    let
      forAllSystems =
        fn:
        let
          systems = [
            "x86_64-linux"
            "aarch64-darwin"
          ];
          overlays = [ self.overlays.default ];
        in
        nixpkgs.lib.genAttrs systems (
          system:
          fn (
            import nixpkgs {
              inherit system overlays;
            }
          )
        );
    in
    {
      overlays.default = final: prev: {
        helix-extras = import ./src { pkgs = final; };
        helix = prev.helix.overrideAttrs (old: {
          passthru = (old.passthru or { }) // {
            inherit (final.helix-extras) withConfig;
          };
        });
      };

      lib = forAllSystems (pkgs: pkgs.helix-extras);

      templates.default = {
        path = ./templates/default;
        description = "Helix dev shell";
      };

      devShells = forAllSystems (pkgs: {
        default = import ./src/shell.nix { inherit pkgs; };
      });

      checks = forAllSystems (pkgs: import ./src/checks.nix { inherit pkgs; });

      formatter = forAllSystems (pkgs: import ./src/formatter.nix { inherit pkgs; });
    };
}
