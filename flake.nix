{
  description = "Unified NixOS and Home Manager flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
  let
    system = "x86_64-linux";

    mkSystem = hostname: systemConfigPath: nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = { inherit inputs; };
      modules = [
        systemConfigPath
        { networking.hostName = hostname; }

        # Integrate home-manager as a NixOS module
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.bashbreakr = import ./home.nix;
          home-manager.extraSpecialArgs = { inherit inputs; };
          home-manager.backupFileExtension = "backup";
        }
      ];
    };
  in {
    nixosConfigurations = {
      desktop = mkSystem "desktop" ./OS/desktopConfiguration.nix;
      laptop  = mkSystem "laptop"  ./OS/laptopConfiguration.nix;
      
      # Universal fallback configuration
      default = mkSystem "default" ./OS/fallbackConfiguration.nix;
    };
  };
}
