{ self, inputs, ... }: {
  flake.nixosModule.nixvim = { pkgs, self, config, ... }: {
    
    programs.nixvim = {

      lsp = {
        enable = true;

        servers = {
          ols = {
            enable = true;

            package = pkgs.ols;
            
            config = {
              cmd = [ "ols" ];
              filetypes = [ "odin" ];
              root_markers = [ "ols.json" ];
            };
          };
        };
      };
    };
  };
}
