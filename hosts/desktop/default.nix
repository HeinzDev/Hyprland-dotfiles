{ config, lib, pkgs, ... }:
{
  imports = [
    ./fonts
    ./virtualisation
    #./scripts
  ];

  #services.xserver.displayManager.sessionPackages = [ pkgs.hyprland ];
  #users.users.greeter.packages = [ pkgs.hyprland ];

  programs.regreet.enable = true;
  services.greetd.enable = true;
  services.xserver.displayManager.session = [{
    manage = "desktop";
    name = "shell";
    start = "$SHELL -l";
  }];

  programs = {
    bash = {
      interactiveShellInit = ''
        if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
           exec  Hyprland
        fi
      '';
  };
  };

  programs.dconf.enable = true;

  xdg.portal = {
    enable = true;
    wlr.enable = true;
  };
}
