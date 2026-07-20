{ self, inputs, ... }: {
  flake.nixosModules.ssh = { pkgs, lib, ... }: {
    services.openssh.enable = true;

    networking.firewall.allowedTCPPorts = [ 22 ];
  };
}
