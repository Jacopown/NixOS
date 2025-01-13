{ lib, inputs, pkgs, config, ...}:
{
  programs.kitty = {
    enable = true;
    font.name = "JetBrainsMono Nerd Font";
    themeFile = "Catppuccin-Frappe";
    settings = {
      enable_audio_bell = false;
    };
  };
}
