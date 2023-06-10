{ config, pkgs, ... }:

{
  imports = [
    ./zsh.nix
  ];
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
  
}

