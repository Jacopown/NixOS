{
  lib,
  pkgs,
  config,
  ...
}: {
  programs = {
    zsh = {
      enable = true;
      autosuggestions.enable = true;
      histSize = 10000;
      syntaxHighlighting.enable = true;
    };
    starship = {
      enable = true;
    };
  };
}
