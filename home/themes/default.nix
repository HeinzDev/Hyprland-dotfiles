{ config, lib, pkgs, ... }:

{
  imports = [ 
    ./cava
  ];
  
  gtk = {
    enable = true;
    iconTheme = {
      name = "Yaru-magenta-dark";
      package = pkgs.yaru-theme;
    };

    theme = {
      name = "Nightfox-Dusk-B-LB";
      package = pkgs.callPackage ./Nightfox-Dusk/default.nix { };
    };

    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
    };
  };
}
