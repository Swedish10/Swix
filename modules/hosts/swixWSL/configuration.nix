{ self, inputs, ... }: {
  flake.nixosModules.swixWSLConfiguration = { pkgs, lib, ... }: {

    # import modules here
    imports = [
      inputs.nixos-wsl.nixosModules.default
    ];

    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    system.stateVersion = "26.05";
    nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  };
}
