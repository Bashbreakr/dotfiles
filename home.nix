{ config, pkgs, ... }:

{
  xdg.configFile = {
    "kitty".source = ./kitty;
    "wezterm".source = ./wezterm;
    "nvim".source = ./nvim;
    "hypr".source = ./hypr;
    "fuzzel".source = ./fuzzel;
    "yazi".source = ./yazi;
    "eww".source = ./eww;
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

  programs.home-manager.enable = true;
}
