{ config, pkgs, lib, ... }:
{
  wayland.windowManager.sway = {
    enable = true;
    package = null;
    wrapperFeatures.gtk = true;
    config = {
      modifier = "Mod4";
      bars = [
        {
          position = "top";
          command = "${pkgs.waybar}/bin/waybar";
        }
      ];
      colors = {
        background = "#15131A";
        focused = {
          border = "#FFFCED";
          background = "#15131A";
          text = "#FFFCED";
          indicator = "#9E48FF";
          childBorder = "#FFFCED";
        };
        focusedInactive = {
          border = "#7F7399";
          background = "#282430";
          text = "#FFFCED";
          indicator = "#9E48FF";
          childBorder = "#7F7399";
        };
        unfocused = {
          border = "#282430";
          background = "#7F7399";
          text = "#FFFCED";
          indicator = "#9E48FF";
          childBorder = "#282430";
        };
        urgent = {
          border = "#FF2C28";
          background = "#15131A";
          text = "#FF2C28";
          indicator = "#FF2C28";
          childBorder = "#FF2C28";
        };
      };
      floating = {
        modifier = "mod4";
        titlebar = false;
        criteria = [
          { window_role = "pop-up"; }
          { window_role = "bubble"; }
          { window_role = "task_dialog"; }
          { window_role = "Preferences"; }
          { window_type = "dialog"; }
          { window_type = "menu"; }
          { title = "File Operation Progress"; }
          { title = "Picture in picture"; }
          { title = "Save File"; }
          { app_id = "firefox"; title = "library"; }
          { app_id = "firefox"; title = "history"; }
          { app_id = "firefox"; title = "bookmarks"; }
          { app_id = "floating_shell_portrait"; }
        ];
      };
      focus = {
        mouseWarping = true;
        followMouse = true;
        newWindow = "smart";
        wrapping = "yes";
      };
      gaps = {
        inner = 2;
        outer = 2;
        smartBorders = "off";
        smartGaps = false;
      };
      keybindings = let
        mod = config.wayland.windowManager.sway.config.modifier;
      in 
        lib.mkOptionDefault {
          "${mod}+Return"         = "exec ${pkgs.kitty}/bin/kitty";
          "${mod}+z"              = "exec ${pkgs.librewolf}/bin/librewolf";
          "${mod}+x"              = "exec ${pkgs.pcmanfm}/bin/pcmanfm";
          "${mod}+p"              = "exec ${pkgs.swaylock}/bin/swaylock";
          "${mod}+Shift+q"        = "exec ${pkgs.wlogout}/bin/wlogout";
          "${mod}+Shift+Return"   = "exec ${pkgs.fuzzel}/bin/fuzzel";
          "${mod}+q"              = "kill";
          "${mod}+Shift+r"        = "reload";
          "${mod}+f"              = "fullscreen";
          "F11"                   = "fullscreen";
          "${mod}+Left"           = "focus left";
          "${mod}+Down"           = "focus down";
          "${mod}+Up"             = "focus up";
          "${mod}+Right"          = "focus Right";
          "${mod}+h"              = "focus left";
          "${mod}+j"              = "focus down";
          "${mod}+k"              = "focus up";
          "${mod}+l"              = "focus right";
          "${mod}+Shift+Left"     = "move left";
          "${mod}+Shift+Down"     = "move down";
          "${mod}+Shift+Up"       = "move up";
          "${mod}+Shift+Right"    = "move right";
          "${mod}+Shift+h"        = "move left";
          "${mod}+Shift+j"        = "move down";
          "${mod}+Shift+k"        = "move up";
          "${mod}+Shift+l"        = "move right";
          "${mod}+1"              = "workspace number 1";
          "${mod}+2"              = "workspace number 2";
          "${mod}+3"              = "workspace number 3";
          "${mod}+4"              = "workspace number 4";
          "${mod}+5"              = "workspace number 5";
          "${mod}+6"              = "workspace number 6";
          "${mod}+7"              = "workspace number 7";
          "${mod}+8"              = "workspace number 8";
          "${mod}+9"              = "workspace number 9";
          "${mod}+0"              = "workspace number 10";
          "${mod}+Shift+1"        = "move container to workspace number 1";
          "${mod}+Shift+2"        = "move container to workspace number 2";
          "${mod}+Shift+3"        = "move container to workspace number 3";
          "${mod}+Shift+4"        = "move container to workspace number 4";
          "${mod}+Shift+5"        = "move container to workspace number 5";
          "${mod}+Shift+6"        = "move container to workspace number 6";
          "${mod}+Shift+7"        = "move container to workspace number 7";
          "${mod}+Shift+8"        = "move container to workspace number 8";
          "${mod}+Shift+9"        = "move container to workspace number 9";
          "${mod}+Shift+0"        = "move container to workspace number 10";
          "${mod}+n"              = "splith";
          "${mod}+m"              = "splitv";
          "${mod}+space"          = "floating toggle";
          "${mod}+Shift+space"    = "focus mode_toggle";
          "${mod}+a"              = "focus parent";
          "${mod}+Shift+minus"    = "move scratchpad";
          "${mod}+minus"          = "scratchpad show";
          #"print"                 = "exec ${pkgs.grimshot}/bin/grimshot --notify save active";
          #"Shift+print"           = "exec ${pkgs.grimshot}/bin/grimshot --notify save area";
          #"Ctrl+print"            = "exec ${pkgs.grimshot}/bin/grimshot --notify save window";
          #"Alt+print"             = "exec ${pkgs.grimshot}/bin/grimshot --notify copy active";
          #"Alt+Shift+print"       = "exec ${pkgs.grimshot}/bin/grimshot --notify copy area";
          #"Alt+Ctrl+print"        = "exec ${pkgs.grimshot}/bin/grimshot --notify copy window";
          "${mod}+insert"         = "exec ${pkgs.wireplumber}/bin/wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+";
          "${mod}+delete"         = "exec ${pkgs.wireplumber}/bin/wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-";
          "${mod}+home"           = "exec ${pkgs.wireplumber}/bin/wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
          "${mod}+end"            = "exec ${pkgs.wireplumber}/bin/wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
          "XF86AudioRaiseVolume"  = "exec ${pkgs.wireplumber}/bin/wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+";
          "XF86AudioLowerVolume"  = "exec ${pkgs.wireplumber}/bin/wpctl set-Volume @DEFAULT_AUDIO_SINK@ 5%-";
          "XF86AudioMute"         = "exec ${pkgs.wireplumber}/bin/wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
          "${mod}+print"          = "exec ${pkgs.playerctl}/bin/playerctl play-pause";
          "${mod}+scroll_lock"    = "exec ${pkgs.playerctl}/bin/playerctl previous";
          "${mod}+pause"          = "exec ${pkgs.playerctl}/bin/playerctl next";
          "XF86AudioPlay"         = "exec ${pkgs.playerctl}/bin/playerctl play-pause";
          "XF86AudioStop"         = "exec ${pkgs.playerctl}/bin/playerctl stop";
          "XF86AudioNext"         = "exec ${pkgs.playerctl}/bin/playerctl next";
          "XF86AudioPrev"         = "exec ${pkgs.playerctl}/bin/playerctl previous";
          "XF86MonBrightnessDown" = "exec ${pkgs.brightnessctl}/bin/brightnessctl st 5%- | sed -En 's/.*\(([0-9]+)%\).*/\1/p' > $WOBSOCK";
          "XF86MonBrightnessUp"   = "exec ${pkgs.brightnessctl}/bin/brightnessctl st 5%+ | sed -En 's/.*\(([0-9]+)%\).*/\1/p' > $WOBSOCK";
      };
      output = {
        DP-1 = {
          resolution = "1920x1080";
          position = "1920,200";
          bg = "./wallpapers/main.jpg fill";
        };
        DP-2 = {
          resolution = "1600x900";
          position = "4864,200";
          bg = "./wallpapers/2.jpg fill";
        };
        DP-3 = {
          resolution = "1280x1024";
          position = "3840,0";
          transform = "270";
          bg = "./wallpapers/vertical.jpg fill";
        };
        HDMI-A-1 = {
          resolution = "1920x1080";
          position = "0,200";
          bg = "./wallpapers/3.jpg fill";
        };
        eDP-1 = {
          resolution = "1920x1080";
          bg = "./wallpapers/main.jpg fill";
        };
      };
      terminal = "${pkgs.kitty}/bin/kitty";
      window.titlebar = false;
      input = {
        "14648:4613:KMF_onn_Mechanical_Gaming_Keyboard" = {
          xkb_layout = "us";
          xkb_variant = "colemak";
          xkb_numlock = "true";
          xkb_options = "caps:backspace";
        };
        "type:keyboard" = {
          xkb_layout = "us";
          xkb_numlock = "true";
        xkb_options = "caps:backspace";
        };
        "type:mouse" = {
          dwt = "true";
        };
        "type:touchpad" = {
          dwt = "true";
          tap = "false";
          natural_scroll = "true";
          middle_emulation = "true";
        };
      };
      startup = [
        {
          command = "${pkgs.mako}/bin/mako";
        }
      ];  
    };
    xwayland = true;
    extraConfig = ''
      corner_radius 0
      shadows enable
      shadow_blur_radius 10
      blur enable
      blur_passes 1
      blur_radius 2
      scratchpad_minimize enable

      set $WOBSOCK $HOME/.cache/.wob.sock
      exec rm -f $WOBSOCK && mkfifo $WOBSOCK && tail -f $WOBSOCK | ${pkgs.wob}/bin/wob
    '';
  };
}