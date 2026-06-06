{ self, inputs, ... }: {
  flake.nixosModules.nixvim = { pkgs, self, ... }: {
    programs.nixvim = {
      plugins.oil = {
        enable = true;
        settings = {
          skip_confirm_for_simple_edits = true;
          view_options = {
            show_hidden = true;
          };
        };
      };
      keymaps = [
        {
          action = ":Oil<CR>";
          key = "-";
          mode = "n";
        }
      ];
    };
  };
}
