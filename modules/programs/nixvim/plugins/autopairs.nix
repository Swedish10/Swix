{ self, inputs, ... }: {
  flake.nixosModules.nixvim = { pkgs, self, ... }: {
    programs.nixvim = {
      plugins.lexima = {
        enable = true;
        package = [ pkgs.vimPlugins.lexima-vim ];
      };
    };
  };
}
