{ pkgs, ... }:
{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
      source ("${pkgs.starship}/bin/starship" init fish --print-full-init | psub)
      neofetch
    '';
    shellAliases = {
      "rm" = "trash-put";
      "tem" = "trash-empty";
      "ls" = "${pkgs.eza}/bin/exa -al --color=always --group-directories-first --icons";
      "la" = "${pkgs.eza}/bin/exa -a --color=always --group-directories-first --icons";
      "ll" = "${pkgs.eza}/bin/exa -l --color=always --group-directories-first --icons";
      "lt" = "${pkgs.eza}.bin/exa -aT --color=always --group-directories-first --icons";
      "ip" = "ip -color";
      "grep" = "${pkgs.ripgrep}/bin/rg --color=auto";
      "fgrep" = "${pkgs.ripgrep}/bin/rg -F --color=auto";
      "egrep" = "${pkgs.ripgrep}/bin/rg -E --color=auto";
    };
  };
}