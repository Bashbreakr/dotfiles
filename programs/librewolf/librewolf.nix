{ pkgs, nur, ... }:

{
  programs.librewolf = {
    enable = true;

    profiles.default = {
      extensions.packages =
        with nur.repos.rycee.firefox-addons; [
          nord-polar-night-theme
        ];

      settings = {
        "privacy.resistFingerprinting" = false;
        "privacy.fingerprintingProtection" = true;
        "privacy.fingerprintingProtection.overrides" =
          "+AllTargets,-CSSPrefersColorScheme";

        "browser.theme.content-theme" = 0;
        "ui.systemUsesDarkTheme" = 1;
      };
    };
  };
}
