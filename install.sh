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


# ----------------------------------------
# Move Configuration Files
# ----------------------------------------
echo "Copying all configuration files..."
function copyFile()
{
    echo "Copying $1 to location $2"
    cp $1 $2
    echo -e "\t ▩▩▩▩▩▩▩▩▩▩ → Finished moving $1"
    echo -e "\n"
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
# Copy Vim Config File
# ----------------------------------------
echo -e "Copying $VIM_DIR/my_config.vim to $VIM_RUNTIME_DIR"
newLine

cp "$VIM_DIR/my_config.vim" $VIM_RUNTIME_DIR

echo -e "Finished $VIM_DIR/my_config.vim to $VIM_RUNTIME_DIR"
newLine

# ----------------------------------------
# Clone Vim Plugins
# ----------------------------------------
echo "Cloning VIM plugins to $VIM_PLUGIN_DIR"

cd $VIM_PLUGIN_DIR
for i in "${VIM_PLUGINS[@]}"; do
    git clone $i
done

echo -e "Cloning VIM plugins to $VIM_PLUGIN_DIR finished."
newLine

cd $PROJECT_DIR

# ----------------------------------------
# Move Fonts Folder
# ----------------------------------------

echo -e "Copying $FONTS_DIR to $HOME/.fonts"
newline
cp -r $FONTS_DIR $HOME/.fonts
echo "Finised $FONTS_DIR to $HOME/.fonts"
newLine

echo "☻ Script installation finished."
echo -e "\n"
