{ config, lib, pkgs, ... }:

{
  #imports = [
  #  (import ../../environment/hypr-variables.nix)
  #];
  imports = [ 
    ../waybar
  ];

  home.packages = with pkgs; [ 
    waybar
    swww
  ];

  xdg.portal = {
    enable = true;
    wlr.enable = true;
  };

  programs = {
    bash = {
      initExtra = ''
        if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
           exec  Hyprland
        fi
      '';
    };
    zsh = {
      loginShellInit = ''
        set TTY1 (tty)
        [ "$TTY1" = "/dev/tty1" ] && exec Hyprland
      '';
    };

    dconf.enable = true;
  };
  #systemd.user.targets.hyprland-session.Unit.Wants = [ "xdg-desktop-autostart.target" ];
  wayland.windowManager.hyprland = {
    enable = true;
    systemdIntegration = true;
    nvidiaPatches = true;
    extraConfig = ''

    exec-once = /home/enzo/.config/hypr/startup.sh


    copy hyprland config here
    '';
  };

  home.file.".config/hypr/autostart.sh".text = ''
#!/usr/bin/env bash

pkill waybar
swww init
swww img /home/enzo/Imagens/wallpapers/kaworu.png
waybar &
  '';
}
