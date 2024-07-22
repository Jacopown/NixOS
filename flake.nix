{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
        url = "github:nix-community/nixvim";
        inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.homeWorkstation = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      system = "x86_64-linux";
      modules = [
        ./hosts/homeWorkstation/configuration.nix
        inputs.home-manager.nixosModules.default
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
  };
}
