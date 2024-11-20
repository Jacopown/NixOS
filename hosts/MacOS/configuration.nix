{pkgs, inputs, ... } :

{
# List packages installed in system profile. To search by name, run:
# $ nix-env -qaP | grep wget
  environment.systemPackages =
    [ pkgs.vim
    ];

  environment.variables = {
    EDITOR = "nvim";
  };

  networking.computerName = "Jacopo's MacBook Pro";
  networking.hostName = "Jacopos-MacBook-Pro";

# Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

# The platform the configuration will be used on.
  nixpkgs.hostPlatform = "aarch64-darwin";

# Enable alternative shell support in nix-darwin.
# programs.fish.enable = true;

  security.pam.enableSudoTouchIdAuth = true;


# Set Git commit hash for darwin-version.
  system.configurationRevision = inputs.self.rev or inputs.self.dirtyRev or null;

  system.defaults.NSGlobalDomain.AppleICUForce24HourTime = true;
  system.defaults.NSGlobalDomain.AppleInterfaceStyle = "Dark";
  system.defaults.NSGlobalDomain.AppleShowAllExtensions = true;
  system.defaults.NSGlobalDomain.AppleShowScrollBars = "Automatic";
  system.defaults.NSGlobalDomain.AppleWindowTabbingMode = "always";
  system.defaults.NSGlobalDomain.InitialKeyRepeat = 25;
  system.defaults.NSGlobalDomain.KeyRepeat = 2;
  system.defaults.NSGlobalDomain._HIHideMenuBar = true;
  system.defaults.NSGlobalDomain."com.apple.mouse.tapBehavior" = 1;
  system.defaults.NSGlobalDomain."com.apple.springing.enabled" = true;
  system.defaults.NSGlobalDomain."com.apple.springing.delay" = 0.5;
  system.defaults.NSGlobalDomain."com.apple.trackpad.forceClick" = true;
  system.defaults.NSGlobalDomain."com.apple.trackpad.scaling" = 3.0;
  system.defaults.WindowManager.EnableStandardClickToShowDesktop = false;
  system.defaults.WindowManager.GloballyEnabled = true;
  system.defaults.controlcenter.NowPlaying = true;
  system.defaults.dock.enable-spring-load-actions-on-all-items = true;
  system.defaults.dock.autohide = true;
  system.defaults.dock.mru-spaces = false;
  system.defaults.dock.show-recents = false;
  system.defaults.finder.AppleShowAllExtensions = true;
  system.defaults.finder.FXPreferredViewStyle = "Nlsv";
  system.defaults.finder.QuitMenuItem = true;
  system.defaults.finder.ShowPathbar = true;
  system.defaults.finder.ShowStatusBar = true;
  system.defaults.finder._FXShowPosixPathInTitle = true;
  system.defaults.loginwindow.LoginwindowText = "Puppa";
  system.defaults.magicmouse.MouseButtonMode = "TwoButton";
  system.defaults.menuExtraClock.Show24Hour = true;
  system.defaults.menuExtraClock.ShowDate = 1;
  system.defaults.menuExtraClock.ShowDayOfMonth = true;
  system.defaults.menuExtraClock.ShowDayOfWeek = true;
  system.defaults.screensaver.askForPassword = true;
  system.defaults.screensaver.askForPasswordDelay = 5;
  system.defaults.spaces.spans-displays = false;
  system.defaults.trackpad.Clicking = true;
  system.defaults.trackpad.TrackpadRightClick = true;
  system.defaults.trackpad.TrackpadThreeFingerDrag = true;

# Used for backwards compatibility, please read the changelog before changing.
# $ darwin-rebuild changelog
  system.stateVersion = 5;

  users.users.jacopown.home = "/Users/jacopown";
}
