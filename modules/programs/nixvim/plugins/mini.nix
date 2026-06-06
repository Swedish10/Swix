{ self, inputs, ... }: {
  flake.nixosModules.nixvim = { pkgs, self, ... }: {
    programs.nixvim = {
      plugins = {
        mini = {
          enable = true;
        };
        mini-starter = {
          enable = true;
        };
      };
    };
  };
}
