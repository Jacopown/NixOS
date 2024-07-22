
{ lib, inputs, pkgs, config, ...}:
{
  programs ={
    git = {
      enable = true;
      userName = "Jacopown";
      userEmail = "Jacopown@NixOPPC";
      extraConfig = {
        init.defaultBranch = "main";
      };
    };
    lazygit.enable = true;
  };
}
