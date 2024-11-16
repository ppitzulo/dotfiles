# Dotfiles
These are my personal dotfiles that I use on my Linux installations, I usually run Arch either as the main OS or through WSL so YMMV running these configs on other distros, though I would expect that they should be fine as long as the package versions are not dramatically different. There are also some scripts that I have created under the `ubin` folder if you are interested in them.

## Installation
I have used [dotbot](https://github.com/anishathalye/dotbot) to manage my dotfiles so installation should be as simple as running
```console
./install
```
within the root of the repo. This creates a symlink to the files stored within this repo to their intended installation directory. if you wish to edit this installation config, you can use the `install.conf.yaml` to modify where the files are installed to and add anything you wish.

## Repository Structure
Here’s an overview of the key folders and files in this repository:

* Dotfiles: Essential configuration files such as .bashrc, .zshrc, tmux.conf, vimrc, and gitconfig.
* config/: Configuration folders for various tools, including i3 (window manager) and polybar (status bar).
* dotbot/: Dotbot files for installation and management of dotfiles.
* fonts/: Custom fonts including JetBrains Mono, Iosevka, and several icons and font packs. These are necessary for the i3 and Polybar configurations, probably have more here than I need to be honest.
* nvim/: Neovim configuration files based on NvChad, including init.lua and Lua scripts for plugins.
* ssh/: SSH configuration files, e.g., config.
* ubin/: Custom utility scripts for various tasks.
