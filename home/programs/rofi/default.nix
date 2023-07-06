{pkgs, ...}: {
  programs.rofi = {
    enable = true;
    terminal = "${pkgs.cool-retro-term}/bin/cool-retro-term";
    theme = ./theme.rasi;
  };
}
