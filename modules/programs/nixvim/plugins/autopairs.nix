{ self, inputs, ... }: {
  flake.nixosModules.nixvim = { pkgs, self, ... }: {
    programs.nixvim = {
      plugins.mini-pairs = {
        enable = true;
        settings = {
          modes = {
            command = false;
            insert = true;
            terminal = false;
          };
        };
      };
    };
  };
}
