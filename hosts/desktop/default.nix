{ config, lib, pkgs, ... }:
{
  imports = [
    ./fonts
    ./virtualisation
    ./scripts
  ]
  
programs.regreet.enable = true;
  services.greetd.enable = true;
  services.xserver.displayManager.session = [{
    manage = "desktop";
    name = "shell";
    start = "$SHELL -l";
  }];

  xdg.portal = {
    enable = true;
    wlr.enable = true;
  };
}

