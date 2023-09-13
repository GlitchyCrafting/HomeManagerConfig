{ ... }:
{
  programs.helix = {
    enable = true;
    settings = {
      theme = "tokyonight";
      editor = {
        line-number = "relative";
        mouse = true;
        scrolloff = 5;
        shell = ["fish"];
        cursorline = true;
        true-color = true;
        color-modes = true;
        lsp = {
          display-inlay-hints = true;
        };
        cursor-shape = {
          insert = "underline";
          normal = "block";
          select = "bar";
        };
        indent-guides = {
          render = true;
        };
      };
    };
  };
}