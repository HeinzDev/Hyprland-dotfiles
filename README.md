**Português (Brasil)** | [English](README_en.md)

<p align="center"><img src="https://i.imgur.com/X5zKxvp.png" width=300px></p>

<p align="center">
    <img src="https://img.shields.io/static/v1?label=Hyprland&message=Stable&style=flat&logo=hyprland&colorA=24273A&colorB=8AADF4&logoColor=CAD3F5"/>
   <a href="https://github.com/zemmsoares/awesome-rices#heinzdev">
    <img src="https://raw.githubusercontent.com/zemmsoares/awesome-rices/main/assets/awesome-rice-badge.svg" alt="awesome-rice-badge">
  </a>
    <img src="https://img.shields.io/static/v1?label=Nix Flake&message=Check&style=flat&logo=nixos&colorA=24273A&colorB=9173ff&logoColor=CAD3F5">
</p>


<p align="center">
<a href="https://nixos.org/"><img src="https://img.shields.io/badge/NixOS-Unstable-informational.svg?style=flat&logo=nixos&logoColor=CAD3F5&colorA=24273A&colorB=8AADF4"></a> 


<p align="center"><img src="https://i.imgur.com/NbxQ8MY.png" width=600px></p>

<h2 align="center">HeinzDev NixOS Dotfiles</h2>


### Aplicações:

|                          |             NixOS 23.11               |
|--------------------------|:-------------------------------------:|
| **Desktop Environment**  |   [Hyprland](https://hyprland.org)      |
| **Terminal Emulator**    |   [Cool-Retro-Term](https://github.com/Swordfish90/cool-retro-term) |
| **Display Server**       |   [Wayland](https://wayland.freedesktop.org)     |
| **Application Launcher** |   [Rofi](https://github.com/davatorium/rofi)  |
| **Shell**                |   [Zsh](https://zsh.sourceforge.io)   |
| **Text Editor**          |   [Neovim](https://neovim.io)         |

## **Hyprland**

Ambiente Desktop:

<p align="center"><img src="https://i.imgur.com/S4XT0ZF.png"></p>
<p align="center"><img src="https://i.imgur.com/0Lq4rOe.png"></p>

## Estrutura

### Estrutura do Nix Dotfiles/

```
├── home
│  ├── programs
│  │   ├── alacritty
│  │   ├── hypr
│  │   ├── kitty
│  │   ├── rofi
│  │   ├── waybar
│  │   └── zsh
│  ├── scripts
│  ├── themes
│  │   └── cava
│  ├── wallpapers
│  └── home.nix
├── host
│  └── desktop
│      └── fonts
│      └── virtualisation
├── nixos
│  ├── configuration.nix
│  └── hardware-configuration.nix
├── flake.nix
└── install.sh
```

### Instalação

0. Baixe o projeto:
```bash
 $ git clone https://github.com/HeinzDev/Hyprland-dotfiles.git | cd Hyprland-dotfiles
```

1. Instale o projeto:

```bash
$ chmod +x install.sh
$ ./install.sh
```
ou

```bash
$ cd Hyprland-dotfiles
$ sudo nixos-rebuild switch --flake .#enzo
```
