{ inputs, self, ... }: {
  flake.nixosModules.user = { pkgs, lib, config, ... }:
  let
    username = "swedish";
  in
  {
    users.users.${username} = {
        enable = true;
        description = ${username};
        isNormalUser = true;
        shell = pkgs.bashInteractive;
        extraGroups = [
          "networkmanager"
          "wheel"
        ];
      };

    nix.settings.allowed-users = [ ${username} ];
  };
}
