{ self, inputs, ... }: {
  flake.nixosModules.macminiWireless = { pkgs, config, ... }: {
    networking.wireless.enable = true;
    hardware.enableRedistributableFirmware = true;
    nixpkgs.config.allowUnfree = true;
    boot.kernelModules = [ "b43" ];
    boot.blacklistedKernelModules = [ "wl" ];
    networking.enableB43Firmware = true;
  };
}
