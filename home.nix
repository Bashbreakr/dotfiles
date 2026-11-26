{ config, pkgs, inputs, ... }:

{
  xdg.configFile = {
    "kitty".source = ./kitty;
    "wezterm".source = ./wezterm;
    "nvim".source = ./nvim;
    "hypr".source = ./hypr;
    "fuzzel".source = ./fuzzel;
    "yazi".source = ./yazi;
    "eww".source = ./eww;
    "rofi".source = ./rofi;
  };

  home.username = "bashbreakr";
  home.homeDirectory = "/home/bashbreakr";

  home.stateVersion = "25.11"; # Don't update

  home.packages = with pkgs; [
    nodejs
    eww
    jq
  ];

  home.file = {
  };

  home.sessionVariables = {
  };

  programs.nh = {
    enable = true;
    clean = {
      enable = true;
      extraArgs = "--keep-since 7d --keep 5";
    };
  };
  home.sessionVariables = {
    FLAKE = "/home/bashbreakr/.dotfiles";
  };

  # xdg.configFile."spotify-player/theme.toml".source = 
    # (pkgs.fetchFromGitHub {
      # owner = "MBeggiato";
      # repo = "spotify-player-themes";
      # rev = "8d067bfc5e89c3aba209a8db15aa4a4e046b17a9";
      # hash = "sha256-imjyNmhVUUaayctYFRIH+bUy2zK2F3eRpc8/muQK3GY=";
    # }) + "/theme.toml" ;

  programs.spotify-player = {
    enable = true;
    settings = {
      withStreaming = true;
      theme = "Winter";
      login_redirect_uri = "http://127.0.0.1:8989/login";
      client_id_command = {
        command = "cat";
        args = [ "/home/bashbreakr/.spotify_client_id"];
      };
    };
  };

  xdg.configFile."spotify-player/theme.toml".source = ./spotify-player/theme.toml;

  programs.home-manager.enable = true;
}
