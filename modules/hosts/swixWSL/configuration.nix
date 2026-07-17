{ self, inputs, ... }: {
  flake.nixosModules.swixWSLConfiguration = { pkgs, lib, ... }: {

    # import modules here
    imports = [
      inputs.nixos-wsl.nixosModules.default
    ];

    system.stateVersion = "26.05";
    nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  };
}
