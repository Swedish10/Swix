{ self, inputs, ... }: {
  flake.nixosModules.nixvim = { pkgs, self, ... }: {
    programs.nixvim = {
      plugins.toggleterm = {
        enable = true;
        settings = {
          direction = "float";
          float_opts = {
            border = "curved";
          };
        };
      };
      keymaps = [
        {
          mode = "t";
          key = "<esc><esc>";
          action = "<C-\\><C-n>";
        }
        {
          mode = "n";
          key = "<leader>t";
          action = ":ToggleTerm";
        }
      ];
    };
  };
}
