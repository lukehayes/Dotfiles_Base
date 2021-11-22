#!/usr/bin/sh

# ----------------------------------------
# Variables
# ----------------------------------------
VIM_RUNTIME_DIR="$HOME/.vim_runtime"
VIM_PLUGIN_DIR="$VIM_RUNTIME_DIR/my_plugins"
VIM_PLUGINS=(
    "git@github.com:flazz/vim-colorschemes.git"
    "git@github.com:preservim/nerdcommenter.git"
    "git@github.com:vimwiki/vimwiki.git"
    )
CONFIG_DIR="$HOME/.config"
PROJECT_DIR="$HOME/Desktop/Linux-Config"
FONTS_DIR="JetBrainsMono"
VIM_DIR="$PROJECT_DIR/Vim"

# Make a new line
function newLine()
{
    echo -e "\n"
}

# Print a message to the terminal
function msg()
{
    echo -e "$1"
}

function finishedMsg()
{
    msg "\t ▩"
    msg "\t ▩"
    msg "\t ▩▩▩▩▩▩▩▩▩▩ → $1"
    newLine
}

function bars()
{
    msg "▩ ▩ ▩"
    newLine
}

function installUltimateVim()
{
    git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh
    finishedMsg "Installed Ultimate Vimrc!"
    newLine
}

# ----------------------------------------
# Move Configuration Files
# ----------------------------------------
echo "Copying all configuration files..."
function copyFile()
{
    echo "Copying $1 to location $2"
    cp $1 $2
    finishedMsg "Finished moving $1"
}

# Bash
copyFile "bashrc-aliases" $HOME/.config/luke-config/

# BSPWM
copyFile "bspwm/keybindings" $HOME/.config/bspwm

# Polybar
copyFile "polybar/config.ini" $HOME/.config/polybar

# SXHKD
copyFile "sxhkd/sxhkdrc" $HOME/.config/sxhkd

# Pulse - Equalizer settings etc.
cp -r "${PROJECT_DIR}/pulse" $CONFIG_DIR

# .ZSHRC
cp "${PROJECT_DIR}/.zshrc" $HOME


# ----------------------------------------
# Install Ultimate Vimrc
# ----------------------------------------
installUltimateVim

# ----------------------------------------
# Clone Vim Plugins
# ----------------------------------------
echo "Cloning VIM plugins to $VIM_PLUGIN_DIR"

cd $VIM_PLUGIN_DIR
for i in "${VIM_PLUGINS[@]}"; do
    git clone $i
    newLine
    msg "Finised cloning $i"
    finishedMsg "Cloned: $i"
done

msg "Cloning VIM plugins to $VIM_PLUGIN_DIR finished."

cd $PROJECT_DIR


# ----------------------------------------
# Copy Vim Config File
# ----------------------------------------
msg "Copying $VIM_DIR/my_configs.vim to $VIM_RUNTIME_DIR"

cp "$VIM_DIR/my_configs.vim" $VIM_RUNTIME_DIR

finishedMsg "Finished $VIM_DIR/my_configs.vim to $VIM_RUNTIME_DIR"


# ----------------------------------------
# Move Fonts Folder
# ----------------------------------------

msg "Copying $FONTS_DIR to $HOME/.fonts"
newLine
cp -r $FONTS_DIR $HOME/.fonts
finishedMsg "Finised $FONTS_DIR to $HOME/.fonts"

finishedMsg "☻ Script installation finished. ☻"

finishedMsg "Now go build something. ( ͡° ͜ʖ ͡°)"
