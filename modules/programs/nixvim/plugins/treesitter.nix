{ self, inputs, ... }: {
  flake.nixosModules.nixvim = { pkgs, self, config, ... }: {
    programs.nixvim = {
      plugins.treesitter = {
        enable = true;

        grammerPackages = with config.plugins.treesitter.builtGrammars; [
          bash
          nix
          json
          lua
          vim
          vimdoc
          markdown
        ];

        nixGrammars = true;
      };
    };
  };
}
