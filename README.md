# My dotfiles

This repository contains my dotfiles and configuration files for various applications and tools I use. The dotfiles are organized using GNU Stow, which allows for easy management of symlinks.

## Requirements

### Git

```bash
$ brew install git
```

### Stow

```bash
$ brew install stow
```

## Installation

First, check out the dotfiles repository in your $HOME directory:

```bash
$ gh repo clone SlevinKl/dotfiles
$ cd dotfiles
```

Then, use GNU Stow to create symlinks for the desired configurations. For example, to set up the `zsh` configuration, run:

```bash
$ stow zsh
$ stow fly
$ stow gh
$ stow git
$ stow vscode
$ stow warp
$ stow zsh
```

