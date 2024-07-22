{ lib, inputs, pkgs, config, ...}:
{
  programs ={
    zsh = {
      enable = true;
      autosuggestion.enable = true;
      historySubstringSearch = { 
        enable = true;
	searchDownKey = "$terminfo[kcud1]";
	searchUpKey = "^$terminfo[kcuu1]";
      };
      syntaxHighlighting.enable = true;
    };
    thefuck = {
      enable = true;
    };
  };
}
