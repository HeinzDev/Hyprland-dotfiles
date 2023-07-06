**Português (Brasil)** | [English](README_en.md)

<p align="center"><img src="https://i.imgur.com/X5zKxvp.png" width=300px></p>
<h2 align="center">HeinzDev NixOS Dotfiles</h2>

<p align="center"><img src="https://i.imgur.com/rqskqPg.png" width=500px></p>

### Aplicações:

|                          |             NixOS 23.05               |
|--------------------------|:-------------------------------------:|
| **Desktop Environment**  |   [Gnome](https://www.gnome.org)      |
| **Terminal Emulator**    |   [Cool-Retro-Term](https://github.com/Swordfish90/cool-retro-term) |
| **Display Server**       |   [Xorg](https://www.x.org/wiki/)     |
| **Application Launcher** |   [Rofi](https://github.com/davatorium/rofi)  |
| **Shell**                |   [Zsh](https://zsh.sourceforge.io)   |
| **Text Editor**          |   [Neovim](https://neovim.io)         |

## **Gnome**

Ambiente Desktop:

<p align="center"><img src="https://i.imgur.com/6YcyoCA.png"></p>
<p align="center"><img src="https://i.imgur.com/zJYPPIT.png"></p>

## Estrutura

### Estrutura do Nix Dotfiles/

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

### Instalação

0. Baixe o projeto:
```bash
 $ git clone https://github.com/HeinzDev/Nix-dotfiles.git || cd Nix
```

1. Instale o projeto:

```bash
$ chmod +x install.sh
$ ./install.sh
```
ou

```bash
$ cd Nix-dotfiles
$ sudo nixos-rebuild switch --flake .#enzo
```
