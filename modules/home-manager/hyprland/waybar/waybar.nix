{ lib, inputs, pkgs, config, ...}:
{
  programs.waybar = {
    enable = true;
    settings = {
      bar = {
        modules-left = [
          "hyprland/workspaces"
        ];

        modules-center = [
	  "clock"
          "hyprland/window"
        ];

	modules-right = [
          "pulseaudio"
	  "tray"
	];

	"hyprland/workspaces" = {
          active-only = false;
	  all-inputs = false;
	  persistent-workspaces = { 
	    "DP-1" = [1 2 3 4 5];
            "HDMI-A-1" = [6 7 8 9 10];
          };
	};
      };
    };
    style = ''${builtins.readFile ./style.css}'';
  };
}
