#!/usr/bin/python

import os

# ----------------------------------------
# Variables
# ----------------------------------------
home_dir         = "/home/luke/"
config_dir       = home_dir + ".config/"
linux_config_dir = home_dir + "Desktop/Linux-Config/"

vim_dir          = linux_config_dir + "Vim/"
vim_runtime_dir  = home_dir + ".vim_runtime/"
vim_plugin_dir   = vim_runtime_dir + "my_plugins"
vim_plugins=[
    "git@github.com:flazz/vim-colorschemes.git",
    "git@github.com:preservim/nerdcommenter.git",
    "git@github.com:vimwiki/vimwiki.git"
    ]

fonts_dir        = "JetBrainsMono"

# ----------------------------------------
# Functions
# ----------------------------------------

# Command Line Helpers
def cmd(shell_cmd):
    """ Just a wrapper for os.system call """
    os.system(shell_cmd)

def new_line():
    cmd("echo -e \n")

def msg(msg):
    """ Print a message to the screen """
    cmd(f"echo -e {msg}")

def finishedMsg(m):
    """ Print a finished message to the screen """
    msg("\t ▩")
    msg("\t ▩")
    msg(f"\t ▩▩▩▩▩▩▩▩▩▩ → {m}")
    new_line()

def clone(repo, location):
    msg(f"Cloning {repo}")
    cmd(f"git clone {repo} {location}")
    finishedMsg(f"Finised Cloning {repo}")

# Ultility Functions
def install_ultimate_vim():
    """ Clone and install the Ultimate Vimrc """
    cmd("git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime")
    cmd("sh ~/.vim_runtime/install_awesome_vimrc.sh")
    finishedMsg("Installed Ultimate Vimrc!")
    new_line()

def install_vim_plugins():
    for plugin in vim_plugins:
        clone(plugin, linux_config_dir )
        finishedMsg(plugin)


def copy_file(file, location):
    """ Copy a file to a location """
    msg(f"Copying FIlE: {file} → → → {location}")
    cmd(f"cp {file} {location}")
    finishedMsg(f"Finished moving {file}")

def copy_dir(dir, location):
    """ Copy a file to a location """
    msg(f"Copying DIRECTORY: {dir} → → → {location}")
    cmd(f"cp -r {dir} {location}")
    finishedMsg(f"Finished moving directory {dir}")


# ----------------------------------------
# Linux Setup
# ----------------------------------------

# Bash
copy_file("bashrc-aliases", config_dir + "luke-config/")

# BSPWM
copy_file("bspwm/keybindings", config_dir + "bspwm")

# Polybar
copy_file("polybar/config.ini", config_dir + "polybar")

# SXHKD
copy_file("sxhkd/sxhkdrc", config_dir + "sxhkd")

# Pulse - Equalizer settings etc.
copy_dir(linux_config_dir + "pulse", config_dir )


# install_ultimate_vim()
# install_vim_plugins()

copy_file(f"{vim_dir}my_configs.vim", vim_runtime_dir)
finishedMsg(f"Finished {vim_runtime_dir}my_configs.vim to {vim_runtime_dir}")

copy_dir(fonts_dir, home_dir + ".fonts")
finishedMsg(f"Finished {fonts_dir} to {home_dir}.fonts")

finishedMsg("☻ Script installation finished. ☻")
# finishedMsg("Now go build something. ( ͡° ͜ʖ ͡°)")





