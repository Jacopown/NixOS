{ lib, inputs, pkgs, config, ...}:
{
  programs.nixvim = {
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
  };
}
