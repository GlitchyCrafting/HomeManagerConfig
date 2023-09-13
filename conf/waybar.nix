{ ... }:
{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 35;
        spacing = 10;
        margin-bottom = 0;
        margin-top = 0;
        margin-left = 0;
        margin-right = 0;
        radius = 0;
        modules-left = [ "clock" ];
        modules-center = [ "image" "custom/media" ];
        modules-right = [ "tray" "battery" ];
        "tray" = {
          spacing = 5;
        };
        "clock" = {
          format = "{:%D | %T}";
          tooltip = true;
          tooltip-format = "{:%A %B %d %Y | %T}";
          interval = 1;
        };
        "battery" = {
          interval = 10;
          states = {
            warning = 30;
            critical = 15;
          };
          format = "Batt:{capacity}% | Draw:{power}W | {timeTO}";
          format-charging = "Batt:{capacity}% | Draw:{power}W | Full:{timeTO}";
          format-discharging = "Batt:{capacity}% | Draw:{power}W | Empty:{timeTO}";
        };
      };
    };
    style = ''
      * {
        font-family: FontAwesome, "FiraCode Nerd Font", Roboto, Helvetica, Arial, sans-serif;
        font-size: 16px;
        padding: 0px;
        margin: 0px;
        border-radius: 0px;
      }

      window#waybar {
        background-color: #15131A;
        border-top: solid 2px #FFFCED;
        color: #FFFCED;
        transition-property: background-color;
        transition-duration: 0.5s;
        border-radius: 0px;
      }

      button {
        color: #282430;
        border: 2px solid #FFFCED;
      }

      #clock,
      #custom-media,
      #tray,
      #taskbar button,
      #cpu,
      #memory,
      #network,
      #battery {
        color: #FFFCED;
        background-color: transparent;
      }

      #tray {
        margin-right: 4px;
      }

      @keyframes blink {
        to {
          background-color: #ffffff;
          color: #000000;
        }
      }

      label:focus {
        background-color: #000000;
      }

      #pulseaudio {
        color: #FFFCED;
      }

      #custom-media {
        color: #FFFCED;
      }

      #tray > .passive {
        -gtk-icon-effect: dim;
      }

      #tray > .needs-attention {
        -gtk-icon-effect: highlight;
        background-color: #FF2C28;
      }

      window .modules-left,
      window .modules-center,
      window .modules-right {
        background-color: #15131A;
        margin: 2px 5px;
      }
    '';
  };
}