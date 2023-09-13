{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    font = {
      package = pkgs.nerdfonts;
      name = "FiraCode Nerd Font";
      size = 11.0;
    };
    shellIntegration.enableFishIntegration = true;
    settings = {
      disable_ligatures = "cursor";
      cursor = "#FFFCED";
      cursor_text_color = "#15131A";
      cursor_shape = "underline";
      cursor_blink_interval = -1;
      cursor_stop_blinking_after = "15.0";

      scrollback_lines = 2000;

      mouse_hide_wait = "-1.0";

      #url_color = "#30FFEF";
      url_style = "curly";
      detect_urls = "yes";
      show_hyperlink_targets = "yes";

      copy_on_select = "yes";
      strip_trailing_spaces = "smart";

      focus_follows_mouse = "yes";

      repaint_delay = 1;
      sync_to_monitor = "no";

      enable_audio_bell = "no";

      shell = "fish";
      editor = "hx";

      inactive_text_alpha = "0.85";
      resize_draw_strategy = "size";

      active_border_color = "#FFFCED";
      inactive_border_color = "#282a36";

      foreground = "#FFFCED";
      background = "#15131A";
      background_opacity = "1.0";
      selection_foreground = "#FFFCED";
      selection_background = "#282430";

      color0  = "#21222C";
      color8  = "#7F7399";
      color1  = "#FF0900";
      color9  = "#FF2C28";
      color2  = "#20FF2C";
      color10 = "#0AFF00";
      color3  = "#FFD730";
      color11 = "#FFCA01";
      color4  = "#BD93F9";
      color12 = "#D6ACFF";
      color5  = "#9E48FF";
      color13 = "#E800F5";
      color6  = "#30FFEF";
      color14 = "#00FFF6";
      color7  = "#FFFCED";
      color15 = "#FFFFFF";
    };
  };
}