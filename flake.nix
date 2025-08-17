{
  inputs = {
    nixpkgs.url = "";
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
  }
}