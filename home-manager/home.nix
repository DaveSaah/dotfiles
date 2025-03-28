{ pkgs, ... }:

{
  programs.home-manager.enable = true;
  home.username = $USER; # replace with your username
  home.homeDirectory = $HOME; # replace with your home directory path
  home.stateVersion = "24.11";

  targets.genericLinux.enable = true;
  xdg.mime.enable = true;

  home.packages = with pkgs; [
    # tools
    lazygit
    lazydocker
    goreleaser
    air
    autotiling
    ani-cli
    fzf
    fd
    firebase-tools
    pnpm

    # languages
    lua51Packages.lua
    lua51Packages.luarocks
    nodejs_23
    go
  ];
}
