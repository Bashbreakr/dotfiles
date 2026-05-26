{ config, pkgs, ... }:

{

  xdg.configFile = {
    "kitty".source = ./kitty;
    "wezterm".source = ./wezterm;
    "nvim".source = ./nvim;
    "hypr".source = ./hypr;
    "fuzzel".source = ./fuzzel;
    "cava".source = ./cava;
    "yazi".source = ./yazi;
  };

  home.username = "bashbreakr";
  home.homeDirectory = "/home/bashbreakr";


  home.stateVersion = "25.11"; # Don't update

  home.packages = with pkgs; [
    nodejs
  ];

  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
