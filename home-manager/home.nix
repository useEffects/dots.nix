{ config, pkgs, lib, ... }:

{
  home.username = "aprilia";
  home.homeDirectory = "/home/aprilia";

  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = import ./user-packages.nix { inherit pkgs; };

  # home.file = {
  #   "${config.xdg.configHome}/Code/User/settings.json" = {
  #     source = config.lib.file.mkOutOfStoreSymlink "${flakePath}/home-manager/";
  #   };
  #   "${config.xdg.configHome}/Code/User/keybindings.json" = {
  #     source = config.lib.file.mkOutOfStoreSymlink "${flakePath}/users/amy/apps/dedicated/vscode-config/keybindings.json";
  #   };
  # };

  home.sessionVariables = {
    # EDITOR = "emacs";
    ANDROID_HOME = "/home/aprilia/Android/Sdk";
  };
  
  fonts.fontconfig.enable = true;

  programs.home-manager.enable = true;
  programs.vscode = import ./vscode { inherit pkgs; };
  programs.git = {
    enable = true;
    userName = "useEffects";
    userEmail = "joel.sr1024@gmail.com";
    extraConfig = {
      credential.helper = "oauth";
    };
  };
  gtk = {
    enable = true;
    theme = {
      name = "Catppuccin-Mocha-Standard-Pink-Dark";
      package = pkgs.catppuccin-gtk.override {
        variant = "mocha";
        accents = [ "pink" ];
        size = "standard";
        tweaks = [ "rimless" "normal" ];
      };
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "mocha";
        accent = "pink";
      };
    };
    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_:true);
    };
  };
  dconf.settings = {
    "org/gnome/shell" = {
      disable-user-extensions = false;
      enabled-extensions = [
        "user-theme@gnome-shell-extensions.gcampax.github.com"
        "trayIconsReloaded@selfmade.pl"
        "quick-settings-tweaks@qwreey"
      ];
    };
    "org/gnome/shell/extensions/user-theme" = {
      name = "catppuccin-mocha-pink-standard+rimless,normal";
    };
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      gtk-theme = lib.mkForce "catppuccin-mocha-pink-standard+rimless,normal";
    };
    "org/gnome/desktop/background" = {
      "picture-uri" = "file:///etc/nixos/home-manager/wallpaper/wallpaper.jpg";
      "picture-uri-dark" = "file:///etc/nixos/home-manager/wallpaper/wallpaper.jpg";
    };
    "org/gnome/desktop/wm/preferences" = {
      button-layout = ":minimize,maximize,close";
    };
  };
  xdg =
    let
      themeDir = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}";
    in
    lib.mkIf config.gtk.enable {
      configFile."gtk-4.0/assets" = {
        source = "${themeDir}/gtk-4.0/assets";
        recursive = true;
      };
      configFile."gtk-4.0/gtk.css".source = "${themeDir}/gtk-4.0/gtk.css";
      configFile."gtk-4.0/gtk-dark.css".source = "${themeDir}/gtk-4.0/gtk-dark.css";
    };
}
