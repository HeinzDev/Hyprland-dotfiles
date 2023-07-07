{pkgs, ...}: 

{
  gtk = {
    enable = true;
    iconTheme = {
      name = "Yaru-magenta-dark";
      package = pkgs.yaru-theme;
    };

    #theme = {
    #  name = "Catppuccin";
    #  package = pkgs.catppuccin-gtk;
    #};

    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
    };
  };
}