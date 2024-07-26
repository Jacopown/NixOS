{ lib, inputs, pkgs, config, ...}:
{
  programs.nixvim = {
    plugins.nvim-ufo = {
      enable = true;
    };
    opts = {
      foldcolumn = "auto:1";
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;
    };
  };
}
