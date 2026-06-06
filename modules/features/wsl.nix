{ self, inputs, ... }: {
  flake.nixosModules.wsl = { pkgs, lib, ... }: {
    wsl = {
      enable = true;
      defaultUser = "swedish";
      wslConf.network.hostname = "swixWSL";
    };
  };
}
