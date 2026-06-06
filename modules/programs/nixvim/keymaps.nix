{ self, inputs, ... }: {
  flake.nixosModules.nixvim = { pkgs, self, ... }: {
    programs.nixvim.keymaps = [
      { # Clear search highlights
        action = "<leader>c";
        key = ":nohlsearch<CR>";
        mode = "n";
      }
      { # Restart Neovim
        action = ":restart<CR>";
        key = "<leader>re";
        mode = "n";
      }
      { # Write current registry
        action = ":write<CR>";
        key = "<leader>w";
        mode = "n";
      }
      { # Source current file
        action = ":source<CR>";
        key = "<leader>so";
        mode = "n";
      }
      { # Close current buffer
        action = ":quit<CR>";
        key = "<leader>q";
        mode = "n";
      }
      { # Next search result centered
        action = "nzzzv";
        key = "n";
        mode = "n";
      }
      { # Previous search result centered
        action = "Nzzzv";
        key = "N";
        mode = "n";
      }
      { # Page down centered
        action = "<C-d>zz";
        key = "<C-d>";
        mode = "n";
      }
      { # Page up centered
        action = "<C-u>zz";
        key = "<C-u>";
        mode = "n";
      }
      { # Paste without yanking
        action = "\"_dP";
        key = "<leader>p";
        mode = "x";
      }
      { # Delete without yanking
        action = "<leader>x";
        key = "\"_d";
        mode = [ "n" "v" ];
      }
      { # Next buffer
        action = ":bnext<CR>";
        key = "<leader>bn";
        mode = "n";
      }
      { # Previous buffer
        action = ":bprevious<CR>";
        key = "<leader>bp";
        mode = "n";
      }
      { # Move to left window
        action = "<C-w>h";
        key = "<C-h>";
        mode = "n";
      }
      { # Move to right window
        action = "<C-w>l";
        key = "<C-l>";
        mode = "n";
      }
      { # Move to top window
        action = "<C-w>k";
        key = "<C-k>";
        mode = "n";
      }
      { # Move to bottom window
        action = "<C-w>j";
        key = "<C-j>";
        mode = "n";
      }
      { # Move to left window
        action = "<C-w>h";
        key = "<C-h>";
        mode = "n";
      }
      { # Split window vertically
        action = ":vsplit<CR>";
        key = "<leader>sv";
        mode = "n";
      }
      { # Split window horizontally
        action = ":split<CR>";
        key = "<leader>sh";
        mode = "n";
      }
      { # Increase window height
        action = ":resize +2<CR>";
        key = "<C-Up>";
        mode = "n";
      }
      { # Decrease window height
        action = ":resize -2<CR>";
        key = "<C-Down>";
        mode = "n";
      }
      { # Increase window width
        action = ":vertical resize +2<CR>";
        key = "<C-Left>";
        mode = "n";
      }
      { # Decrease window width
        action = ":vertical resize -2<CR>";
        key = "<C-Right>";
        mode = "n";
      }
      { # Move line down
        action = ":m .+1<CR>==";
        key = "<A-j>";
        mode = "n";
      }
      { # Move line up
        action = ":m .-2<CR>==";
        key = "<A-k>";
        mode = "n";
      }
      { # Move selection down
        action = ":m '>+1<CR>gv=gv";
        key = "<A-j>";
        mode = "v";
      }
      { # Move selection up
        action = ":m '<-2<CR>gv=gv";
        key = "<A-k>";
        mode = "v";
      }
      { # Indent left and reselect
        action = "<gv";
        key = "<";
        mode = "v";
      }
      { # Indent right and reselect
        action = ">gv";
        key = ">";
        mode = "v";
      }
      { # Join lines and keep cursor position
        action = "mzJ`z";
        key = "J";
        mode = "n";
      }
      { # Copy full file path
        key = "<leader>pa";
        mode = "n";
        action = ''
          function() 
            local path = vim.fn.expand("%:p")
            vim.fn.setreg("+", path)
            print("file:", path)
          end
        '';
      }
      { # Toggle diagnostics
        key = "<leader>td";
        mode = "n";
        action = ''
        function()
          vim.diagnostic.enable(not vim.diagnostic.is_enabled())
        end
        '';
      }
    ];
  };
}
