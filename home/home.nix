{ hyprland, pkgs, ...}: {

  imports = [
    hyprland.homeManagerModules.default
    #./environment
    ./programs
    ./scripts
    ./themes
  ];

  home = {
    username = "enzo";
    homeDirectory = "/home/enzo";
  };

  home.packages = (with pkgs; [ 
    cool-retro-term
    neovim
    nano
    wget
    grim
    slurp
    wl-clipboard
    pamixer
    mpc-cli
    discord
    exa
    btop
    ranger
    wlr-randr
    git
    gnumake
    curl
    appimage-run
    bibata-cursors
    catimg
    vscode
    lollypop
    lutris
    nitch
    openrgb
    tty-clock
    xflux
    betterdiscord-installer
  ]) ++ (with pkgs.gnome; [ 
    nautilus
    zenity
    gnome-tweaks
    eog
    gedit
  ]);

  programs.home-manager.enable = true;

  home.stateVersion = "23.05";
}
