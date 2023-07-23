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
  wallpaper_random = pkgs.writeShellScriptBin "wallpaper_random" ''
    if command -v swww >/dev/null 2>&1; then 
        killall dynamic_wallpaper
        swww img $(find ~/Imagens/wallpapers/. -name "*.png" | shuf -n1) --transition-type simple
    fi
  '';
  dynamic_wallpaper = pkgs.writeShellScriptBin "dynamic_wallpaper" ''
    if command -v swww >/dev/null 2>&1; then 
        swww img $(find ~/Imagens/wallpapers/. -name "*.png" | shuf -n1) --transition-type simple
        OLD_PID=$!
        while true; do
            sleep 120
        swww img $(find ~/Pictures/wallpapers/. -name "*.png" | shuf -n1) --transition-type simple
            NEXT_PID=$!
            sleep 5
            kill $OLD_PID
           OLD_PID=$NEXT_PID
        done
    fi
  '';
  default_wall = pkgs.writeShellScriptBin "default_wall" ''
    if command -v swww >/dev/null 2>&1; then 
          killall dynamic_wallpaper
          swww img /home/enzo/Imagens/wallpapers/menhera.jpg  --transition-type simple
    fi
  '';
  #border_color = pkgs.writeShellScriptBin "border_color" ''
  #    function border_color {
  #    if [[ "$GTK_THEME" == "Nightfox-Dusk-B" ]]; then
  #      hyprctl keyword general:col.active_border rgb\(ffc0cb\) 
  #    elif [[ "$GTK_THEME" == "Catppuccin-Latte-Green" ]]; then
  #        hyprctl keyword general:col.active_border rgb\(C4ACEB\)
  #   else
  #       hyprctl keyword general:col.active_border rgb\(81a1c1\)
  #    fi
  # }
  #  socat - UNIX-CONNECT:/tmp/hypr/$(echo $HYPRLAND_INSTANCE_SIGNATURE)/.socket2.sock | while read line; do border_color $line; done
  #'';
  #
in
{
  home.packages = with pkgs; [
    cool-retro-term-zsh
    rofi1
    rofi2
    cava-internal
    wallpaper_random
    #dynamic_wallpaper
    default_wall
    #border_color
  ];
}
