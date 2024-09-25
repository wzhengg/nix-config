{ config, pkgs, ... }:

{
  home.username = "bill";
  home.homeDirectory = "/home/bill";

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;

  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "CascadiaCode" ]; })

    curl
    fd
    gcc
    gnumake
    gnutar
    ripgrep

    go_1_23
    gopls
    gotools
    gofumpt

    lua
    lua-language-server
    stylua

    nixd
    nixfmt-rfc-style

    nodejs_22

    typescript
    typescript-language-server

    shfmt
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };

  programs.git = {
    enable = true;
    userName = "William Zheng";
    userEmail = "williamzheng2001@gmail.com";
    extraConfig.init.defaultBranch = "main";
  };

  programs.tmux = {
    enable = true;
    baseIndex = 1;
  };

  programs.starship = {
    enable = true;
  };

  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "CaskaydiaCove Nerd Font:size=13";
        pad = "8x8";
      };

      cursor = {
        style = "block";
        unfocused-style = "hollow";
        blink = "yes";
        blink-rate = 500;
      };

      mouse = {
        hide-when-typing = "yes";
      };

      colors = {
        foreground = "cdd6f4";
        background = "1e1e2e";

        regular0 = "45475a";
        regular1 = "f38ba8";
        regular2 = "a6e3a1";
        regular3 = "f9e2af";
        regular4 = "89b4fa";
        regular5 = "f5c2e7";
        regular6 = "94e2d5";
        regular7 = "bac2de";

        bright0 = "585b70";
        bright1 = "f38ba8";
        bright2 = "a6e3a1";
        bright3 = "f9e2af";
        bright4 = "89b4fa";
        bright5 = "f5c2e7";
        bright6 = "94e2d5";
        bright7 = "a6adc8";

        selection-foreground = "cdd6f4";
        selection-background = "414356";

        search-box-no-match = "11111b f38ba8";
        search-box-match = "cdd6f4 313244";

        jump-labels = "11111b fab387";
        urls = "89b4fa";
      };
    };
  };
}
