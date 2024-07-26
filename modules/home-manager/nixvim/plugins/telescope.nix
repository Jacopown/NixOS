{ lib, inputs, pkgs, config, ...}:
{
  programs.nixvim.plugins.telescope= {
    enable = true;
    extensions.file-browser = {
      enable = true;
      settings = {
        # cwd_to_path = true;
        path = "%:p:h";
        hidden = true;
        hijack_netrw = true;
      };
      # follow_symlinks = true;
    };
    extensions.fzf-native.enable = true;
    # extensions.ui-select.enable = true;
    keymaps = {
      "<leader>e" = {
        action = "file_browser";
        options = {
          silent = true;
          desc = "Open Telescope file browser";
        };
      };
    };
  };
}
