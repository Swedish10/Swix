{ self, inputs, ... }: {
  flake.nixosModules.nixvim = { pkgs, self, ... }: {
    programs.nixvim = {
      plugins.blink-cmp = {
        enable = true;
      };
    };
  };
}
