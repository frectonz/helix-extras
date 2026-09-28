{ pkgs }:
let
  hx = pkgs.helix.withConfig {
    servers = {
      nil.enable = true;
      typos_lsp.enable = true;
      typos_lsp.languages = [ "markdown" ];
      fs_watcher_lsp.enable = true;
      fs_watcher_lsp.languages = "all";
    };

    settings.editor.rulers = [ 100 ];
  };
in
pkgs.mkShell {
  packages = [ hx ];
}
