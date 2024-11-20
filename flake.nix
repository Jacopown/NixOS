{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
        url = "github:nix-community/nixvim";
        inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nix-darwin, home-manager, ... }@inputs: {
    nixosConfigurations.homeWorkstation = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      system = "x86_64-linux";
      modules = [
        ./hosts/homeWorkstation/configuration.nix
        home-manager.nixosModules.default
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.racoon = ./hosts/homeWorkstation/home.nix;
          home-manager.backupFileExtension = "backup";
          home-manager.sharedModules = [
            inputs.nixvim.homeManagerModules.nixvim
          ];
        }
      ];
    };

    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#MacBook-Pro-di-Jacopo
    darwinConfigurations.MacOS = nix-darwin.lib.darwinSystem {
      modules = [
        ./hosts/MacOS/configuration.nix
        home-manager.darwinModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          # home-manager.extraSpecialArgs = 
          home-manager.users.jacopown = import ./hosts/MacOS/home.nix;
          home-manager.backupFileExtension = "backup";
        }
        
      ];
      specialArgs = { inherit inputs; };
    };

    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations.MacOS.pkgs;
  };
}
