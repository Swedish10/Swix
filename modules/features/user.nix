{ inputs, self, ... }: {
  flake.nixosModules.user = { pkgs, lib, config, ... }: {
    users.users.swedish = {
        enable = true;
        description = "swedish";
        isNormalUser = true;
        shell = pkgs.bashInteractive;
        extraGroups = [
          "networkmanager"
          "wheel"
        ];
      };

    nix.settings.allowed-users = [ "swedish" ];
  };
}
