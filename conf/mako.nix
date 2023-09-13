{ pkgs, ... }:
{
  services.mako = {
    enable = true;
    sort = "-time";
    layer = "overlay";
    backgroundColor = "#15131AEF";
    width = 300;
    height = 150;
    borderSize = 2;
    borderColor = "#9E48FF";
    borderRadius = 0;
    icons = true;
    maxIconSize = 64;
    defaultTimeout = 30000;
    ignoreTimeout = false;
    font = "Playfair Display 11";
    extraConfig = ''
      on-notify=exec mpv /usr/share/sounds/freedesktop/stereo/message.oga
      on-button-left=invoke-default-action
      on-button-middle=exec ${pkgs.mako}/bin/makoctl menu -n "$id" fuzzel -p "Select action: "
      on-button-right=dismiss
    
      [urgency=low]
      border-color=#9E48FF

      [urgency=normal]
      border-color=#9E48FF

      [urgency=high]
      border-color=#EE2C28
      default-timeout=0
      on-notify=exec mpv /usr/share/sounds/freedesktop/stereo/bell.oga
    '';
  };
}