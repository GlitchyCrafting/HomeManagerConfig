{ pkgs, ... }:
{
  programs.wlogout = {
    enable = true;
    layout = [
      {
        label = "logout";
        action = "loginctl terminate-user $USER";
        text = "Logout";
        keybind = "e";
      }
      {
        label = "shutdown";
        action = "shutdown now";
        text = "Shutdown";
        keybind = "s";
      }
      {
        label = "reboot";
        action = "shutdown -r now";
        text = "Reboot";
        keybind = "r";
      }
    ];
    style = ''
      window {
        background-color: #15131A;
      }
      button {
        color: #FFFCED;
        background-color: #282430;
        border: 2px solid #282430;
        border-radius: 0px;
        background-repeat: no-repeat;
        background-position: center;
        background-size: 50%;
        margin: 3px;
        font-size: 50px;
      }
      button:focus, button:active, button:hover {
        background-color: #9E48FF;
        outline-style: none;
      }
      #logout {
        background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/logout.png"), url("${pkgs.wlogout}/share/wlogout/icons/logout.png"));
      }
      #shutdown {
        background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/shutdown.png"), url("${pkgs.wlogout}/share/wlogout/icons/shutdown.png"));
      }
      #reboot {
        background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/reboot.png"), url("${pkgs.wlogout}/share/wlogout/icons/reboot.png"));
      }
    '';
  };
}