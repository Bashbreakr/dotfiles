{ config, pkgs, ... }:

{
  imports = 
    [
      /etc/nixos/hardware-configuration.nix
      ./common.nix
    ];

  boot.loader = {
    grub = {
      enable = true;
      theme = ./grub_theme;
    };
  };
  
  networking.hostName = "Default";
  
  networking.networkmanager.enable = true;

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };

  users.users.bashbreakr = {
    isNormalUser = true;
    description = "Bash Breakr";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  system.stateVersion = "25.11";
}
