{ self, inputs, ... }: {
  flake.nixosModules.nixvim = { pkgs, self, ... }: {
    programs.nixvim = {
      plugins.lualine = {
        enable = true;
        autoload = true;
      };
    };
  };
}
