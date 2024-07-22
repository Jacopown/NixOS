{ lib, inputs, pkgs, config, ...}:
{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland; 
  };
}
