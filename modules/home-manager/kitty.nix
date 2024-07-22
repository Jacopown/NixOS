{ lib, inputs, pkgs, config, ...}:
{
  programs.kitty = {
    enable = true;
    font.name = "JetBrainsMono Nerd Font";
    theme = "Catppuccin-Frappe";
  };
}
