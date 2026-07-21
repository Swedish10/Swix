{ self, inputs, ... }: {
  flake.nixosModules.bash = { pkgs, ... }: {
    programs.bash = {
      enable = true;

      shellAliases = {
        n = "nvim";
      };

      promptInit = ''
        PS1='\[\e[38;5;39m\][\[\e[38;5;33m\]\H\[\e[97m\]@\[\e[38;5;33m\]\u\[\e[38;5;39m\]]-[\[\e[97m\]\w\[\e[38;5;39m\]]\n\[\e[0m\]󰻈 '
      '';
    };
  };
}
