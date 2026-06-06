{ self, inputs, ... }: {
  flake.nixosModule.nixvim = { pkgs, self, config, ... }: {
    
    programs.nixvim = {

      lsp = {
        enable = true;

        servers = {
          nixd = {
            enable = true;

            package = pkgs.nixd;
            
            config = {
              cmd = [ "nixd" ];
              filetypes = [ "nix" ];
            };
          };
        };
      };
    };
  };
}
