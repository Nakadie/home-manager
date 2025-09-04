{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      ...
    }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      formatter.${system} = pkgs.alejandra;

      homeConfigurations.worklaptop = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [
          ./work-laptop-home.nix
        ];
      };

      homeConfigurations.kam = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [
          ./kam-home.nix
        ];
      };
    };
}
