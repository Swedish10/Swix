{ self, inputs, ... }: {
  flake.nixosConfigurations.merry = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.armadaBase
      self.nixosModules.user
      self.nixosModules.corePrograms
      self.nixosModules.nh
      self.nixosModules.nixvim
      self.nixosModules.console
      self.nixosModules.fonts
      self.nixosModules.macminiWireless
      ({ config, pkgs, ... }: {
        netorking.hostname = "merry";
      })
    ];
  };
}
