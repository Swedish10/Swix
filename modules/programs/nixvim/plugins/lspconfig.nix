{ self, inputs, ... }: {
  flake.nixosModules.nixvim = { pkgs, self, ... }: {
    programs.nixvim = {
      plugins.lspconfig = {
        enable = true;
      };
    };
  };
}
