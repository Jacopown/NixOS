{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/";
      inputs.nixpkgs.follows = "nixpkgs";

    };

    nixvim.url = "github:Jacopown/vim";
  };

  outputs = { self, nixpkgs,  home-manager, nixvim,  ... }@inputs: {
    nixosConfigurations.homeWorkstation = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      system = "x86_64-linux";
      modules = [
        ./hosts/homeWorkstation/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.racoon = ./hosts/homeWorkstation/home.nix;
          home-manager.backupFileExtension = "backup";
        }
      ];
    };
  };
}
