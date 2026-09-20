{
  inputs = {
    micros.url = "github:snugnug/micros";
    micros.inputs.nixpkgs.follows = "nixpkgs";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = {
    nixpkgs,
    micros,
    ...
  } @ inputs: {
    system = micros.lib.microsSystem {
      specialArgs = {inherit inputs;};
      modules = [
        ./configuration.nix
        {
          nixpkgs.hostPlatform = {
            system = "x86_64-linux";
          };
        }
      ];
    };
  };
}
