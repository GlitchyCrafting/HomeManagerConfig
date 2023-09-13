{ pkgs, ... }:
{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        #font = "FiraCode Nerd Font";
        icons-enabled = "no";
        terminal = "${pkgs.kitty}/bin/kitty";
        tabs = 4;
        fields = "name,filename,generic,keywords,categories,exec";
      };
      border = {
        width = 2;
        radius = 0;
      };
      colors = {
        border = "#9E48FFFF";
        background = "#15131AFF";
        text = "#FFFCEDFF";
        match = "#4560FFFF";
        selection = "#9E48FFFF";
        selection-text = "#FFFCEDFF";
        selection-match = "#30FFEFFF";
      };
    };
  };
}