# ironbar.nix
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ironbar
    playerctl
    brightnessctl
  ];

  xdg.configFile."ironbar/config.toml".text = ''
    position = "bottom"
    height = 36
    anchor_to_edges = true

    start = [
      "workspaces",
      "focused"
    ]

    center = [
      "clock"
    ]

    end = [
      "cpu",
      "memory",
      "volume",
      "tray"
    ]

    [workspaces]
    type = "workspaces"

    [focused]
    type = "focused"

    [clock]
    type = "clock"
    format = "%a %d %b  %H:%M"

    [cpu]
    type = "cpu"
    format = "󰍛 {usage}%"

    [memory]
    type = "memory"
    format = "󰘚 {percentage}%"

    [volume]
    type = "volume"
    format = "{icon} {percentage}%"

    [tray]
    type = "tray"
  '';

  xdg.configFile."ironbar/style.css".text = ''
    * {
      font-family: "JetBrainsMono Nerd Font";
      font-size: 14px;
      border: none;
      min-height: 0;
    }

    window#ironbar {
      background: #1e1e2e;
      color: #cdd6f4;
    }

    .module {
      padding: 0 10px;
      margin: 4px 2px;
      background: #313244;
      border-radius: 8px;
    }

    .workspaces .item.focused {
      background: #89b4fa;
      color: #1e1e2e;
    }
  '';
}
