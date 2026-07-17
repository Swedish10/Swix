{ self, inputs, ... }: {
  flake.nixosModules.console = { pkgs, config, ... }: {
    services.kmscon = {
      enable = true;
      hwRender = true;
      fonts = [
        {
          name = "JetBrainsMono Nerd Font Mono";
          package = pkgs.nerd-fonts.jetbrains-mono;
        }
      ];
    };

    environment.systemPackages = with pkgs [
      terminus_font
      unifont
      pango
    ];
  };
}
