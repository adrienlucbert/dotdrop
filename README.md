# Linux Dotfiles (using dotdrop)

This repository holds my Linux configuration files and installed packages.

I use [dotdrop](https://dotdrop.readthedocs.io) to manage (backup, restore) my
dotfiles.

## Installation

### Installing required packages

Before restoring configuration files from dotdrop, please install the packages
listed in the [packages directory](./packages/).

Using pacman:

```bash
sudo pacman -S - < packages/arch/packages
sudo pacman -S - < packages/arch/packages.gui
```

Using [paru](https://github.com/Morganamilo/paru) (AUR):

```bash
# install paru itself
git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si

paru -S - < packages/arch/packages.aur
paru -S - < packages/arch/packages.aur.gui
```

### Installing dotfiles

With the packages installed, you can now install the dotfiles using dotdrop:

```bash
dotdrop install -D -c dotdrop/config.yaml
```

## Apply patches

After a fresh install, some files may require a patch in order to behave as expected.
Those patches are listed in the [patches directory](./patches).
You can check if all files path are correct in the [patch script](./patches/patch.sh)
and then run it to apply all patches.

```bash
sudo ./patches/patch.sh
```

## Additional actions

### Setting up TUI Spotify client

I use a [spotify-tui](https://github.com/Rigellute/spotify-tui), a terminal-based
UI, to control Spotify. It plays music on [spotifyd](https://github.com/Spotifyd/spotifyd),
a Spotify client running as a daemon.

```bash
# setup keyring for spotifyd
secret-tool store --label='spotifyd' application rust-keyring service spotifyd username "adrien.lucbert@epitech.eu"
```
Get a client id and secret from [Spotify dashboard](https://developer.spotify.com/dashboard/applications).
```bash
# setup spotify-tui
spt
```
