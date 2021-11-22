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
FONTS_DIR="JetBrainsMono"
PROJECT_DIR="$HOME/Desktop/Linux-Config"


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

# ----------------------------------------
# Clone Vim Plugins
# ----------------------------------------
echo "Cloning VIM plugins to $VIM_PLUGIN_DIR"

cd $VIM_PLUGIN_DIR
for i in "${VIM_PLUGINS[@]}"; do
    git clone $i
done

echo "Cloning VIM plugins to $VIM_PLUGIN_DIR finished."

cd $PROJECT_DIR

# ----------------------------------------
# Move Fonts Folder
# ----------------------------------------

echo "Copying $FONTS_DIR to $HOME/.fonts"
cp -r $FONTS_DIR $HOME/.fonts
echo "Finised $FONTS_DIR to $HOME/.fonts"

echo "☻ Script installation finished."
echo -e "\n"
