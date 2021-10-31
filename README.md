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
