{ ... }:
{
  programs.mpv = {
    enable = true;
    config = {
      hwdec = "vaapi";
      vo = "gpu";
      ao = "pipewire";
      save-position-on-quit = true;
      watch-later-options = true;
    };
  };
}
