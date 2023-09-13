{ config, pkgs, lib, ... }:
{
  home.username = "gruff";
  home.homeDirectory = "/home/gruff";
  programs.home-manager.enable = true;
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    clipman
    eza
    fish
    fzf
    git
    gvfs
    pavucontrol
    pcmanfm
    helvum
    slurp
    trash-cli
    viewnior
    xdg-desktop-portal-wlr
    wob
    jamesdsp
  ];
  
  home.file = {
    ".cargo" = {
      source = ./home_dots/.cargo;
      recursive = true;
    };
    ".icons" = {
      source = ./home_dots/.icons;
      recursive = true;
    };
    ".themes" = {
      source = ./home_dots/.themes;
      recursive = true;
    };
    ".bash_profile".source = ./home_dots/.bash_profile;
    ".gitconfig".source = ./home_dots/.gitconfig;
    ".profile".source = ./home_dots/.profile;
  };

  xdg = {
    enable = true;
    userDirs = {
      createDirectories = true;
      desktop     = "${config.home.homeDirectory}/Misc/Desktop";
      publicShare = "${config.home.homeDirectory}/Misc/PubShare";
      templates   = "${config.home.homeDirectory}/Misc/Templates";
      documents   = "${config.home.homeDirectory}/Media/Docs";
      download    = "${config.home.homeDirectory}/Media/Downloads";
      music       = "${config.home.homeDirectory}/Media/Music";
      pictures    = "${config.home.homeDirectory}/Media/Pics";
      videos      = "${config.home.homeDirectory}/Media/Videos";
    };
    mimeApps.defaultApplications = [
      { "audio/*" = [ "${pkgs.mpv}/share/applications/mpv.desktop" "${pkgs.tenacity}/share/applications/tenacity.desktop" ]; }
      { "image/*" = [ "${pkgs.viewnior}/share/applications/viewnior.desktop" "${pkgs.gimp}/share/applications/gimp.desktop" ]; }
      { "text/*" = [ "${pkgs.neovim}/share/applications/neovim.desktop" "${pkgs.helix}/share/applications/helix.desktop" "${pkgs.kitty}/share/applications/kitty.desktop" ]; }
    ];
    configFile = {
      "BetterDiscord".source   = ./xdg_dots/BetterDiscord;
      "cava".source            = ./xdg_dots/cava;
      "corectrl".source        = ./xdg_dots/corectrl;
      "davinci-resolve".source = ./xdg_dots/davinci-resolve;
      "godot".source           = ./xdg_dots/godot;
      "goverlay".source        = ./xdg_dots/goverlay;
      "jamesdsp".source        = ./xdg_dots/jamesdsp;
      "nvim".source            = ./xdg_dots/nvim;
      "neofetch".source        = ./xdg_dots/neofetch;
      "obs-studio".source      = ./xdg_dots/obs-studio;
      "pcmanfm".source         = ./xdg_dots/pcmanfm;
      "solvespace".source      = ./xdg_dots/solvespace;
      "viewnior".source        = ./xdg_dots/viewnior;
      "wob".source             = ./xdg_dots/wob;
      "yuzu".source            = ./xdg_dots/yuzu;
    };
  };

  imports = [
    ./conf/sway.nix
    ./conf/waybar.nix
    ./conf/kitty.nix
    ./conf/fish.nix
    ./conf/starship.nix
    ./conf/helix.nix
    ./conf/mako.nix
    ./conf/fuzzel.nix
    ./conf/sway.nix
    ./conf/wlogout.nix
    ./conf/btop.nix
    ./conf/mpv.nix
  ];

  programs.neovim = {
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };

  programs.obs-studio = {
    enable = true;
    plugins = with pkgs; [
      obs-studio-plugins.wlrobs
      obs-studio-plugins.obs-vaapi
      obs-studio-plugins.obs-vkcapture
      obs-studio-plugins.obs-pipewire-audio-capture
    ];
  };

  qt = {
    enable = true;
    platformTheme = "gtk";
  };

  gtk = {
    enable = true;
    cursorTheme.name = "Sweet-cursors";
#    font = {
#      name = "FiraCode Nerd Font";
#      size = 11;
#    };
#    iconTheme.name = "glitchcandy";
#    theme.name = "glitchcandy";
  };
  
  home.sessionVariables = {
    EDITOR = "hx";
    TERMINAL = "kitty";
    TERM = "kitty";
    BROWSER = "librewolf";
  };

  stylix = {
    image = ./stylix/wallpapers/main.jpg;
    base16Scheme = {
      scheme = "glitchcandy";
      author = "Gruficlath";
      base00 = "#15131A";
      base01 = "#282430";
      base02 = "#7F7399";
      base03 = "#7F7399";
      base04 = "#7F7399";
      base05 = "#FFFCED";
      base06 = "#FFFCED";
      base07 = "#15131A";
      base08 = "#20FFEF";
      base09 = "#9E48FF";
      base0A = "#00D3D0";
      base0B = "#FFD730";
      base0C = "#FF5B24";
      base0D = "#20FF2C";
      base0E = "#F123FF";
      base0F = "#FF2C28";
    };
    polarity = "dark";
    autoEnable = false;
    targets.gtk.enable = true;
    fonts = {
      serif = {
        package = pkgs.google-fonts;
        name = "Playfair Display";
      };
      sansSerif = {
        package = pkgs.google-fonts;
        name = "Dosis";
      };
      monospace = {
        package = pkgs.nerdfonts;
        name = "FiraCode Nerd Font";
      };
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
      sizes = {
        applications = 12;
        desktop = 10;
        popups = 10;
        terminal = 11;
      };
    };
  };

  home.stateVersion = "23.05";
}
