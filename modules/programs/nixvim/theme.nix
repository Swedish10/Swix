{ self, inputs, ... }: {
  flake.nixosModules.nixvim = { pkgs, self, ... }: {
    programs.nixvim = {
      colorschemes.tokyonight = {
        enable = true;
      };
    };
  };
}
