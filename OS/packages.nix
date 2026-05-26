{ pkgs, ... }:

with pkgs; [
  # Core CLI utilities
  tree
  wget
  unzip
  p7zip
  jq
  gum
  envsubst
  scc
  eza
  fd
  ripgrep
  zoxide

  # Development
  git
  neovim
  python3
  openjdk21
  rustup
  gcc
  gnumake
  tree-sitter
  quarto
  nix-prefetch-scripts

  # Terminal / shell
  wezterm
  kitty

  # Browsers
  firefox
  librewolf

  # Communication
  discord
  thunderbird
  spotify

  # Hyprland / Wayland
  wl-clipboard
  hyfetch
  cava
  hyprpaper
  hyprshot
  fuzzel

  # Media
  mpv
  ardour

  # Yazi support
  yazi
  imv
  ffmpeg
  ffmpegthumbnailer
  poppler-utils

  # Misc
  putty
  tty-clock
]
