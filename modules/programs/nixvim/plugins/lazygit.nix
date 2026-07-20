{ self, inputs, ... }: {
  flake.nixosModules.nixvim = { pkgs, self, ... }: {
    programs.nixvim = {
      plugins.lazygit = {
        enable = true;
      };
      keymaps = [
        {
          action = ":LazyGit<CR>";
          key = "<leader>lg";
          mode = "n";
        }
      ];
    };
  };
}
