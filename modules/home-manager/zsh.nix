{ lib, inputs, pkgs, config, ...}:
{
  programs ={
    zsh = {
      enable = true;
      autosuggestion.enable = true;
      dotDir = ".config/zsh";
      history.append = true;
      history.expireDuplicatesFirst = true;
      history.ignoreAllDups = true;
      historySubstringSearch = { 
        enable = true;
        searchDownKey = "$terminfo[kcud1]";
        searchUpKey = "^$terminfo[kcuu1]";
      };
      syntaxHighlighting.enable = true;
      sessionVariables = {};
      shellAliases = {};
    };
    thefuck = {
      enable = true;
    };
  };
}
