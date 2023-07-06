**English** | [Portuguese (PT-BR)](README.md)

<p align="center"><img src="https://i.imgur.com/X5zKxvp.png" width=300px></p>
<h2 align="center">HeinzDev NixOS Dotfiles</h2>

<p align="center"><img src="https://i.imgur.com/rqskqPg.png" width=500px></p>

### Apps:

|                          |             NixOS 23.05               |
|--------------------------|:-------------------------------------:|
| **Desktop Environment**  |   [Gnome](https://www.gnome.org)      |
| **Terminal Emulator**    |   [Cool-Retro-Term](https://github.com/Swordfish90/cool-retro-term) |
| **Display Server**       |   [Xorg](https://www.x.org/wiki/)     |
| **Application Launcher** |   [Rofi](https://github.com/davatorium/rofi)  |
| **Shell**                |   [Zsh](https://zsh.sourceforge.io)   |
| **Text Editor**          |   [Neovim](https://neovim.io)         |


### DE/WM

**Gnome**

Desktop Environment:

<p align="center"><img src="https://i.imgur.com/6YcyoCA.png"></p>
<p align="center"><img src="https://i.imgur.com/zJYPPIT.png"></p>

## Nix Dotfiles Directory Structure
```
├── home
│  ├── programs
│  │   ├── alacritty
│  │   ├── dconf
│  │   ├── rofi
│  │   └── zsh
│  ├── themes
│  ├── wallpapers
│  └── home.nix
├── nixos
│  ├── configuration.nix
│  └── hardware-configuration.nix
├── flake.nix
└── install.sh
```

### Installation

0. Download the project:
```bash
 $ git clone https://github.com/HeinzDev/Nix-Dotfiles.git|| cd Nix-Dotfiles.git
```

1. Install the project:

```bash
$ chmod +x install.sh
$ ./install.sh
```
or

```bash
$ cd Nix-Dotfiles
$ sudo nixos-rebuild switch --flake .#enzo
```
