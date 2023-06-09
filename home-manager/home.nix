{ config, pkgs, ... }:

{
  home.username = "joe";
  home.homeDirectory = "/home/joe";
  home.stateVersion = "23.05";
  home.packages = with pkgs; [
    telegram-desktop 
    bat 
    bitwarden 
    btop 
    cava 
    element-desktop 
    erdtree 
    fd 
    htop-vim 
    kitty
    kitty-themes
    lazygit 
    lf 
    libreoffice-fresh 
    logseq
    micro 
    mullvad-browser
    neovim 
    picom 
    polybar 
    protonvpn-gui
    protonvpn-cli 
    ripgrep 
    signal-desktop 
    standardnotes
    sxhkd 
    tailscale 
    tldr
    tmux 
    tor-browser-bundle-bin
    ueberzugpp 
    graphicsmagick 
    ffmpeg 
    ffmpegthumbnailer 
    zathura 
    poppler 
    ghostscript
    xclip 
    yt-dlp
  ];
  
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    enableSyntaxHighlighting = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "docker-compose" "docker" ];
      theme = "dst";
    };
    initExtra = ''
      bindkey '^f' autosuggest-accept
    '';
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}

