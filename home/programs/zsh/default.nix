{ config, pkgs, ... }:

{
    programs = {
        zsh = {
            enable = true;
            oh-my-zsh = {
                enable = true;
                theme = "refined";
                plugins = [
                    "git"
                ];
            };

            enableAutosuggestions = true;
            enableCompletion = true;
            enableSyntaxHighlighting = true;
        };
    };

    home.file.".zshrc".text = ''
export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
#export ZSH="$HOME/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


ZSH_THEME="refined"
REFINED_CHAR_SYMBOL="⚡"

# Rofi
export PATH=$HOME/.config/rofi/scripts:$PATH
    '';
}