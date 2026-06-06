{ self, inputs, ... }: {
  flake.nixosModules.nixvim = { pkgs, self, ... }: {
    programs.nixvim = {
      plugins.fff = {
        enable = true;
      };
      keymaps = [
        {
          action = ":lua require('fff').find_files()<CR>";
          key = "<leader>ff";
          mode = "n";
        }
        {
          action = ":lua require('fff').live_grep()<CR>";
          key = "<leader>ffg";
          mode = "n";
        }
      ];
    };
  };
}
