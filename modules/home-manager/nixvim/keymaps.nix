{ lib, inputs, pkgs, config, ...}:
{
  programs.nixvim = {
    globals = {
      mapleader = " ";
    };
    keymaps = [
      {
        key = "<Space>";
        action = "<Nop>";
        options = {
          silent = true;
          desc = "Remap leader key to space";
        };
      }
      {
        mode = "i";
        key = "kj";
        action = "<ESC>";
        options = {
          silent = true;
	        desc = "Fast esc solution";
        };
      }
      {
        mode = "i";
	      key = "jk";
        action = "<ESC>";
        options = {
          silent = true;
          desc = "Fast esc solution";
        };
      }
      {
        mode = "x";
	      key = "J";
        action = ":move'>+1<CR>gv-gv";
        options = {
          silent = true;
	        desc = "Move selected line up";
        };
      }
      {
        mode = "x";
	      key = "K";
        action = ":move'<-2<CR>gv-gv";
        options = {
          silent = true;
	        desc = "Move selected line down";
        };
      }
    ];
  };
}
