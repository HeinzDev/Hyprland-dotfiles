{ config, lib, pkgs, ... }:

let
  cava-internal = pkgs.writeShellScriptBin "cava-internal" ''
    cava -p ~/.config/cava/config1 | sed -u 's/;//g;s/0/▁/g;s/1/▂/g;s/2/▃/g;s/3/▄/g;s/4/▅/g;s/5/▆/g;s/6/▇/g;s/7/█/g;'
  '';
  cool-retro-term-zsh = pkgs.writeShellScriptBin "cool-retro-term-zsh" ''
    cool-retro-term -e zsh
  '';
    rofi1 = pkgs.writeShellScriptBin "rofi1" ''
    ~/.config/rofi/launchers/type-1/launcher.sh
  '';
    rofi2 = pkgs.writeShellScriptBin "rofi2" ''
    ~/.config/rofi/launchers/type-2/launcher.sh
  '';
    rofiWindow = pkgs.writeShellScriptBin "rofiWindow" ''
#!/usr/bin/env bash
## Run
rofi \
    -show drun \
    -theme "$HOME/.config/rofi/theme.rasi"
  '';
  wallpaper_random = pkgs.writeShellScriptBin "wallpaper_random" ''
    if command -v swww >/dev/null 2>&1; then 
        killall dynamic_wallpaper
        swww img $(find ~/Imagens/wallpapers/. -name "*.png" | shuf -n1) --transition-type simple
    fi
  '';
  default_wall = pkgs.writeShellScriptBin "default_wall" ''
    if command -v swww >/dev/null 2>&1; then 
          swww img ~/Imagens/wallpapers/menhera.jpg  --transition-type simple
    fi
  '';
in
{
  home.packages = with pkgs; [
    cool-retro-term-zsh
    rofi1
    rofi2
    rofiWindow
    cava-internal
    wallpaper_random
    default_wall
  ];
}
