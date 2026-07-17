{ self, inputs, ... }: {
  flake.nixosModules.armadaBase = { pkgs, config, ... }: {
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    time.timeZone = "America/NewYork";

    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    system.stateVersion = "26.05";
  };
}
