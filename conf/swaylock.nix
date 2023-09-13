{ ... }:
{
  programs.swaylock = {
    enable = true;
    settings = {
      ignore-empty-password = true;
      show-failed-attempts = true;
      daemonize = true;
      indicator-idle-visible = true;

      color = "#15131A";
      bs-hl-color = "#FF5B24";
      caps-lock-bs-hl-color = "#FF2C28";
      caps-lock-key-hl-color = "#FF2C28";

      inside-color = "#15131A";
      inside-clear-color = "#7f7399";
      inside-caps-lock-color = "#FF5B24";
      inside-ver-color = "#30FFEF";
      inside-wrong-color = "#FF2C28";

      line-color = "#7f7399";
      line-clear-color = "#7f7399";
      line-caps-lock-color = "#FF5B24";
      line-ver-color = "#7F7399";
      line-wrong-color = "#FF2C28";

      ring-color = "#282439";
      ring-clear-color = "#282430";
      ring-caps-lock-color = "#FF5B24";
      ring-ver-color = "#30FFEF";
      ring-wrong-color = "#FF2C28";

      text-color = "#FFFCED";
      text-clear-color = "#FFFCED";
      text-caps-lock-color = "#FFFCED";
      text-ver-color = "#FFFCED";
      text-wrong-color = "#FFFCED";
    };
  };
}