{ lib, inputs, pkgs, config, ...}:
{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    enableMan = true;
    vimdiffAlias = true;
    viAlias = true;
    vimAlias = true;
    clipboard = {
      register = "unnamedplus";
      providers = {
        wl-copy.enable = true;
	xclip.enable = true;
      };
    };
    opts = {
      backup = false;
      cursorline = true;
      hlsearch = true;
      ignorecase = true;
      mouse = "a";
      smartindent = true;
      splitbelow = true;
      splitright = true;
      swapfile = false;
      termguicolors = true;
      timeoutlen = 1000;
      undofile = true;
      updatetime = 300;
      writebackup = false;
      expandtab = true;
      shiftwidth = 2;
      tabstop = 2;
      number = true;
      relativenumber = true;
      laststatus = 3;
      ruler = false;
      signcolumn = "yes";
      wrap = true;
      scrolloff = 8;
    };
    keymaps = [
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
    colorschemes.catppuccin = {
      enable = true;
      settings = {
        flavour = "frappe";
      };
    };
  };
}
