{ config, lib, pkgs, ... }:
{
  imports = [
    ./fonts
    ./virtualisation
    ./scripts
  ]

  programs = {
    bash = {
      initExtra = ''
        if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
           exec  Hyprland
        fi
      '';
    };
  };

  programs = {
    dconf.enable = true;
  };

  xdg.portal = {
    enable = true;
    wlr.enable = true;
  };
}

