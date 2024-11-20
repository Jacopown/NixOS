
{ lib, inputs, pkgs, config, ...}:
{
  programs ={
    git = {
      enable = true;
      userName = "Jacopown";
      extraConfig = {
        init.defaultBranch = "main";
      };
    };
    lazygit.enable = true;
  };
}
