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

def finishedMsg():
    """docstring for finishedMsg"""
    msg "\t ▩"
    msg "\t ▩"
    msg "\t ▩▩▩▩▩▩▩▩▩▩ → $1"
    new_line
