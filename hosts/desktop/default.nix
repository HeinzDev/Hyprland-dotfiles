{ config, lib, pkgs, ... }:
{
  imports = [
    ./fonts
    ./virtualisation
    ./scripts
  ]
  
  programs.regreeter.enable = true;
  services.greetd.enable = true;
  environment.variables.SESSION_DIRS = "${pkgs.hyprland}/share/wayland-sessions";

  programs = {
    dconf.enable = true;
  };

  xdg.portal = {
    enable = true;
    wlr.enable = true;
  };
}

