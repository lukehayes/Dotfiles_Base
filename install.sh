#!/usr/bin/sh

function copyFile()
{
    echo "Copying $1 to location $2"
    cp $1 $2
    echo "---"
    echo "Finished moving $1"
}

copyFile bashrc-aliases $HOME/.config/luke-config/

copyFile "bspwm/keybindings" $HOME/.config/bspwm

copyFile "polybar/config.ini" $HOME/.config/polybar

copyFile "sxhkd/sxhkdrc" $HOME/.config/sxhkd

echo "---"
echo "Script installation finished"
echo "---"
