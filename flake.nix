{
  description = "My flake";
  
inputs = {
  nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  home-manager = {
   url = "github:nix-community/home-manager";
   inputs.nixpkgs.follows = "nixpkgs";
  };
  hyprland.url = "github:hyprwm/Hyprland";
};

outputs = { self, nixpkgs, home-manager, hyprland, ...}: 

let
  system = "x86_64-linux";
  pkgs = import nixpkgs {
    inherit system;
	  config.allowUnfree = true;	
  };
  lib = nixpkgs.lib;

in {
nixosConfigurations = {
    enzo = lib.nixosSystem rec {
      inherit system;
      specialArgs = { inherit hyprland; };
      modules = [ 
        ./nixos/configuration.nix
        hyprland.nixosModules.default
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.enzo = import ./home/home.nix ;
          home-manager.extraSpecialArgs = specialArgs;
        }
      ];
    };
  };
};
}
