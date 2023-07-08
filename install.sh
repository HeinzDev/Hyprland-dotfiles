#!/usr/bin/env bash

if [ -e "$HOME/.config/gtk-3.0" ]; then 
  rm -f "$HOME/.config/gtk-3.0/config ini"
fi

if [ -e "$HOME/.config/gtk-4.0" ]; then 
  rm -f "$HOME/.config/gtk-4.0/config ini"
fi

script_dir="$HOME/script"

if [ ! -d "$script_dir" ]; then
  mkdir "$script_dir"
  echo '#!/usr/bin/env bash' > "$script_dir/cava-internal.sh"
  echo 'cava -p ~/.config/cava/config1 | sed -u 's/;//g;s/0/▁/g;s/1/▂/g;s/2/▃/g;s/3/▄/g;s/4/▅/g;s/5/▆/g;s/6/▇/g;s/7/█/g;'' >> "$script_dir/cava-internal.sh"
  chmod +x "$script_dir/cava-internal.sh"

  echo '#!/usr/bin/env bash' > "$script_dir/cool-retro-term.sh"
  echo 'cool-retro-term -r zsh' >> "$script_dir/cool-retro-term.sh"
  chmod +x "$script_dir/cool-retro-term.sh""
fi


sudo nixos-rebuild switch --flake .#enzo --show-trace