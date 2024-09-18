{ pkgs }:

let
  python-packages = ps: with ps; [
    pandas
    requests
  ];
in
with pkgs; [
  htop
  nixpkgs-fmt
  nodejs
  bun
  go
  docker
  docker-compose
  (python3.withPackages python-packages)
  nodePackages."pnpm"
  nodePackages."yarn"
  gcc
  git
  openjdk17
  neofetch
  zsh
  gnome-tweaks
  gnomeExtensions.user-themes
  gnomeExtensions.tray-icons-reloaded
  gnomeExtensions.quick-settings-tweaker
  catppuccin-gtk
  slack
  gh
  android-studio
  poetry
  fnm
  texliveFull
  insomnia

  # Fonts
  cascadia-code
]
