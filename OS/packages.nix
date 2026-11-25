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
  brightnessctl
  fastfetch
  kalker
  nh

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
  librewolf
  tridactyl-native

  # Communication
  discord
  thunderbird
  spotify-player
  spotify
  signal-desktop

  # Hyprland / Wayland
  wl-clipboard
  hyfetch
  cava
  hyprpaper
  hyprshot
  fuzzel
  rofi
  catppuccin-cursors.mochaDark
  gocheat

  # Media
  mpv
  ardour
  cmus
  touchosc
  bluez
  kdePackages.kdenlive
  obs-studio
  tuxguitar

  # audio-plugins
  lsp-plugins
  #airwindows

  # Yazi support
  yazi
  imv
  ffmpeg
  ffmpegthumbnailer
  poppler-utils

  # Misc
  putty
  tty-clock
  peaclock 
]
