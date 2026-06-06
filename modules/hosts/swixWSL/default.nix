{ self, inputs, ... }: {
  flake.nixosConfigurations.swixWSL = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.swixWSLConfiguration
      self.nixosModules.wsl
      self.nixosModules.user
      self.nixosModules.corePrograms
      self.nixosModules.nh
      self.nixosModules.nixvim
    ];
  };
}
