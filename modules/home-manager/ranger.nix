{
  lib,
  inputs,
  pkgs,
  config,
  ...
}: {
  programs = {
    ranger = {
      enable = true;
    };
  };
}
