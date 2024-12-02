{
  lib,
  inputs,
  pkgs,
  config,
  ...
}: {
  programs = {
    zathura = {
      enable = true;
    };
  };
}
