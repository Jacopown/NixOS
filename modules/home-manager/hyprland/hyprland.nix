{ lib, inputs, pkgs, config, ...}:
{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd.enable = false;
    settings = {
      "$mod" = "SUPER";

      exec-once = [
        "waybar"
      ];

      bind = [
      	"$mod, T, exec, kitty"
        "$mod SHIFT, Q, killactive"
        "$mod CONTROL, Q, exit"
	"$mod, SPACE, exec, rofi -show drun"

	"$mod, H, movefocus, l"
	"$mod, L, movefocus, r"
	"$mod, K, movefocus, u"
	"$mod, J, movefocus, d"

	"$mod, 1, workspace, 1"
	"$mod, 2, workspace, 2"
	"$mod, 3, workspace, 3"
	"$mod, 4, workspace, 4"
	"$mod, 5, workspace, 5"
	"$mod, 6, workspace, 6"
	"$mod, 7, workspace, 7"
	"$mod, 8, workspace, 8"
	"$mod, 9, workspace, 9"
	"$mod, 0, workspace, 10"

	"$mod SHIFT, 1, movetoworkspace, 1"
	"$mod SHIFT, 2, movetoworkspace, 2"
	"$mod SHIFT, 3, movetoworkspace, 3"
	"$mod SHIFT, 4, movetoworkspace, 4"
	"$mod SHIFT, 5, movetoworkspace, 5"
	"$mod SHIFT, 6, movetoworkspace, 6"
	"$mod SHIFT, 7, movetoworkspace, 7"
	"$mod SHIFT, 8, movetoworkspace, 8"
	"$mod SHIFT, 9, movetoworkspace, 9"
	"$mod SHIFT, 0, movetoworkspace, 10"
      ];
      monitor = [
        "DP-1, 1920x1080@144, 0x0, 1"
        "HDMI-A-1, 1920x1080@60, 1920x0, 1, transform, 1"
      ];
      workspace = [
        "1, monitor:DP-1, default:true"
        "2, monitor:DP-1, default:false"
        "3, monitor:DP-1, default:false"
        "4, monitor:DP-1, default:false"
        "5, monitor:DP-1, default:false"
	"6, monitor:HDMI-A-1, default:true"
	"7, monitor:HDMI-A-1, default:false"
	"8, monitor:HDMI-A-1, default:false"
	"9, monitor:HDMI-A-1, default:false"
	"10, monitor:HDMI-A-1, default:false"
      ];
      general = {
        "col.inactive_border" = "rgb(303446)";
	"col.active_border" = "rgb(e78284)";
      };
      decoration = {
        rounding = "10";
      };

      env = [
        # Needed to make hyprland work with Nvidia
	"LIBVA_DRIVER_NAME,nvidia"
        "XDG_SESSION_TYPE,wayland"
        "GBM_BACKEND,nvidia-drm"
	"__GLX_VENDOR_LIBRARY_NAME,nvidia"

        # Tries when possible to force applications to use wayland
	"GDK_BACKEND,wayland,x11,*"
	"QT_QPA_PLATFORM,wayland;xcb"
	"SDL_VIDEODRIVER,wayland"
	"CLUTTER_BACKEND,wayland"

	# Allows Electron and Chromium app to run without xwayland
	"NIXOS_OZONE_WL,1"
      ];
    };
  };
}
