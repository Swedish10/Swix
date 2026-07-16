{self, inputs, ... }: {
  flake.nixosModules.nixvim = { pkgs, self, ... }: {
    programs.nixvim = {
      enable = true;
      defaultEditor = true;

      viAlias = true;
      vimAlias = true;

      globals = {
        mapleader = " ";
        maplocalleader = " ";
      };

      clipboard.register = "unnamedplus";

      opts = {
        number = true;
        relativenumber = true;
        cursorline = false;
        wrap = false;
        scrolloff = 15;
        sidescrolloff = 10;
        termguicolors = true;
        winborder = "rounded";

        tabstop = 2;
        shiftwidth = 2;
        softtabstop = 2;
        expandtab = true;
        smartindent = true;
        autoindent = false;

        ignorecase = true;
        smartcase = true;
        hlsearch = true;
        incsearch = true;

        signcolumn = "yes";
        colorcolumn = "0";
        showmatch = true;
        cmdheight = 1;
        showmode = false;
        pumheight = 10;
        pumblend = 10;
        winblend = 0;
        conceallevel = 0;
        concealcursor = "";
        lazyredraw = true;
        synmaxcol = 300;

        backup = false;
        writebackup = false;
        swapfile = false;
        undofile = true;
        updatetime = 300;
        timeoutlen = 500;
        ttimeoutlen = 50;
        autoread = true;
        autowrite = false;

        hidden = false;
        errorbells = false;
        autochdir = false;
        modifiable = true;
        encoding = "utf-8";

        splitbelow = true;
        splitright = true;
        wildmenu = true;
        redrawtime = 10000;
        maxmempattern = 20000;
      };
    };
  };
}
