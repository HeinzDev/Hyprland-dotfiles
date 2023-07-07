#!/usr/bin/env bash

if [ -e "$HOME/.config/gtk-3.0" ]; then 
  rm -f "$HOME/.config/gtk-3.0/config ini"
fi

if [ -e "$HOME/.config/gtk-4.0" ]; then 
  rm -f "$HOME/.config/gtk-4.0/config ini"
fi

sudo nixos-rebuild switch --flake .#enzo --show-trace