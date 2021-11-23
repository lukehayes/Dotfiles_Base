#!/usr/bin/python

import os

# ----------------------------------------
# Variables
# ----------------------------------------
home_dir         = "/home/luke/"
config_dir       = home_dir + ".config/"
linux_config_dir = home_dir + "Desktop/Linux-Config/"

vim_dir          = linux_config_dir + "Vim"
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

def install_ultimate_vim():
    """ Clone and install the Ultimate Vimrc """
    cmd("git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime")
    cmd("sh ~/.vim_runtime/install_awesome_vimrc.sh")
    finishedMsg "Installed Ultimate Vimrc!"
    new_line()
