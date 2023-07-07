{ hyprland, pkgs, ...}: {

  imports = [
    hyprland.homeManagerModules.default
    ./programs
    ./themes
    ./fonts
    ./virtualisation
  ];

  home = {
    username = "enzo";
    homeDirectory = "/home/enzo";
  };

  home.packages = (with pkgs; [ 
      cool-retro-term
      neovim
      wget
      discord
      exa
      btop
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
      sublime4
      tty-clock
      xflux
      betterdiscord-installer
  ]) ++ (with pkgs.gnome; [ 
      nautilus
      zenity
      gpaste
      gnome-tweaks
      gnome-screenshots
      eog
      gedit
  ])

  programs.home-manager.enable = true;

  home.stateVersion = "23.05";
}
