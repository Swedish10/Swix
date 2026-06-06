{ self, inputs, ... }: {
  flake.nixosModules.corePrograms = { pkgs, lib, ... }: {
    environment.systemPackages = with pkgs; [
      git
      tree
      fastfetch
      btop
      fzf
      cowsay
      fortune
      ripgrep
      cargo
      rustc
      gitui
      openssh
      nixd
      nixfmt
      alejandra
      lua
      stylua
      lua-language-server
    ];
  };
}
