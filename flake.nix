{
  description = "Nix0S Flake File";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = github:nix-community/home-manager;
      inputs.nixpkgs.follows = "nixpkgs";
      # secrets management, lock with git commit at 2023/5/15
      agenix.url = "github:ryantm/agenix/db5637d10f797bb251b94ef9040b237f4702cde3";
    };
  };

  outputs = { nixpkgs, home-manager,  ... }:
  let
    system = "x86_64-linux";
  in
  {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
	  agenix.nixosModules.default
          {
            home-manager = {
              useUserPackages = true;
              useGlobalPkgs = true;
              users.joe = ./home-manager/home.nix;
            };
          }
        ];
      };
    };
  };
}
