{ self, inputs, ... }: {
  flake.nixosModules.nixvim = { pkgs, self, ... }: {
    imports = [
      inputs.nixvim.nixosModules.nixvim
    ];
  };
}
