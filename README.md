# Packages & Tools

> Before you start installing the packages, make sure you run **Manjaro**. I'm using the [community version](https://manjaro.org/download/) of Manjaro + i3wm

![Screenshot](screen.png "Dotfiles Screenshot")

### Terminal
**Emulator** : Kitty
* Fish Shell
* Starship Prompt
* Exa - ll/ls symbols & colors

```
pamac build kitty fish starship exa
```


### Vim

* Neovim - Vim Fork
* Packer - Plugin Manager

```
pamac build neovim packer
```

### Window Manager / Tools

* i3-gaps - i3wm window gaps
* Rofi - Search Tool
* Polybar - Top Bar
* Nitrogen - Wallpaper Manager
* Picom - iBhagwan's fork with blur/radius

```
pamac build i3-gaps rofi polybar nitrogen picom-ibhagwan-git
```

### Media

* MPV - Media Player
* Ytfzfim - Youtube FZF
* Youtube-DL
* Spotify
* Feh

```
pamac build mvp ytfzfim youtube-dl spotify-launcher feh
```

### Other Tools

* SSHFS - SSH Mounting
* Stow - Symlink Manager
* Node.js + npm
* Gnome Calendar
* Firefox

```
pamac build sshfs stow nodejs npm gnome-calendar firefox
```

### Fonts
* FiraCode (current favorite)
* JetBrainsMono
* Hack
