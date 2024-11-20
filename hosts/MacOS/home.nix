{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "jacopown";
  home.homeDirectory = "/Users/jacopown";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";

  imports = [
    ../../modules/home-manager/kitty.nix
    # ../../modules/home-manager/zsh.nix
    # ../../modules/home-manager/rofi.nix
    ../../modules/home-manager/git.nix
    # ../../modules/home-manager/nixvim
  ];

  programs.git.userEmail = "Jacopown@MacBook";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
