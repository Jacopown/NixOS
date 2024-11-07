{ lib, inputs, pkgs, config, ...}:
{
  programs.nixvim = {
    keymaps = [
      {
        mode = "n";
        key = "<S-l>";
        action = "<CMD>bnext<NL>";
        options = {
          silent = true;
          desc = "Move to next buffer";
        };
      }
      {
        mode = "n";
        key = "<S-h>";
        action = "<CMD>bprevious<NL>";
        options = {
          silent = true;
          desc = "Move to previous buffer";
        };
      }
      {
        mode = "n";
        key = "<S-q>";
        action = "<CMD>Bdelete<NL>";
        options = {
          silent = true;
          desc = "Close current buffer";
        };
      }
    ];
    plugins = {
      bufferline = {
        enable = true;
        settings = {
          options = {
            closeCommand = "Bdelete! %d"; 
            hover = {
              enabled = true;
              reveal = ["close"];
            };
          };
        };
      };
      bufdelete = {
        enable = true;
      };
    };
  };
}
