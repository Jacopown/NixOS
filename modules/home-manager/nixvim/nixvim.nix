{ lib, inputs, pkgs, config, ...}:
{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    enableMan = true;
    vimdiffAlias = true;
    viAlias = true;
    vimAlias = true;
    colorschemes.catppuccin = {
      enable = true;
      settings = {
      flavour = "frappe";
      };
    };
  };
}
