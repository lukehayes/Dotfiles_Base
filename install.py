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
#
# ----------------------------------------
