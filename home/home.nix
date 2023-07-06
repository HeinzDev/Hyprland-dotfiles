{ hyprland, pkgs, ...}: {

  imports = [
    ./programs
    ./themes
    hyprland.homeManagerModules.default
  ];

  home = {
    username = "enzo";
    homeDirectory = "/home/enzo";
  };

  home.packages = with pkgs; [
    cool-retro-term
    (opera.override { proprietaryCodecs = true; })
    neovim
    hyperpapper
    waybar
    wget
    discord
    exa
    htop
    ranger
    git
    gnumake
    curl
    nano
    appimage-run
    bibata-cursors
    catimg
    vscode
    lollypop
    lutris
    nitch
    openrgb
    sublime3
    tty-clock
    xflux
    betterdiscord-installer
  ];

  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.nvidiaPatches = true;

  programs.home-manager.enable = true;

  home.stateVersion = "23.05";
}
