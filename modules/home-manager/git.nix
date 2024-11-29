
{ lib, inputs, pkgs, config, ...}:
{
  programs ={
    git = {
      enable = true;
      userName = "Jacopown";
      userEmail = "jacopown@NixOS";
      extraConfig = {
        init.defaultBranch = "main";
      };
    };
    lazygit.enable = true;
  };
}
