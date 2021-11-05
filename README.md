# Dotfiles

### Installation

0. PREREQUISITE -> git

```
# For DEBIAN based (Ubuntu, Linux Mint, Debian, etc.)
sudo apt install git

# For ARCH based (Manjaro, ArchLinux, Garuda, ArtixLinux, etc.)
sudo pacman -S git
```

1. Add the folder to .gitignore

```
echo ".dotfiles.git" >> .gitignore
```

2. Clone this into a bare repository

```
git clone --bare https://github.com/viveksray17/dotfiles ~/.dotfiles.git
```

3. Deploying the dotfiles

```
git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME checkout
```
