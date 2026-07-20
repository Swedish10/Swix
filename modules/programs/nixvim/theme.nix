{ self, inputs, ... }: {
  flake.nixosModules.nixvim = { pkgs, self, ... }: {
    programs.nixvim = {
      colorschemes.vague = {
        enable = true;
      };
    };
  };
}
