{
  description = "Homelab NixOS flake configuration for multiple devices and multiple users";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
  };

  outputs = { self, nixpkgs }@inputs:
    {
      nixosConfigurations = {
        saturn = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [ ./saturn.nix];
        };
      };
    };
}
