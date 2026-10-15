{
  # Time zone.
  time.timeZone = "Europe/Berlin";
  services.timesyncd.enable = true;

  # Configure console keymap
  console.keyMap = "dvorak";
  services.keyd = {
    enable = true;
    
    keyboards.default = {
      ids = [ "*" ];

      settings = {
        main = {
          alt = "esc";
        };
      };
    };
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  programs.hyprland.enable = true;
}
