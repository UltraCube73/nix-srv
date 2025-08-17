{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.05";
  };
  outputs = { nixpkgs, ... }:
  {
    nixosConfigurations.srv = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration
        ./secrets
      ];
    };
  };
}