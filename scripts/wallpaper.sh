#!/bin/bash
# When run this will randomly set the background wallpaper.
# This script is intended to be run on system startup.
# Use 'gsettings list-recursively org.gnome.desktop.background'
# to inspect the current GNOME wallpaper settings.


if [ "$*" != "" ]; then
    echo "Usage: bash wallpaper.sh"
    exit 1
fi

wallpaper_dir=$HOME/Pictures/Wallpapers

# Store all the image file paths in an array
declare -ra wallpapers=(
    $wallpaper_dir/bierstadt_looking_down_yosemite_valley.jpg
    $wallpaper_dir/cole_thomas_the_oxbow.jpg
    $wallpaper_dir/cole_thomas_two_lakes.jpg
    $wallpaper_dir/cole_thomas_garden_of_eden.jpg
    $wallpaper_dir/constable_wivenhoe_park.jpg
    $wallpaper_dir/constable_harwich_lighthouse.jpg
    $wallpaper_dir/lorrain_claude_queen_of_sheba.jpg
    $wallpaper_dir/lorrain_claude_the_enchanted_castle.jpg
    $wallpaper_dir/turner_calais_pier.jpg
    $wallpaper_dir/turner_houses_of_lords.jpg
)

# Store the desired image options in a key-value map
declare -rA option_dict=(
    ["bierstadt_looking_down_yosemite_valley.jpg"]="zoom"
    ["cole_thomas_the_oxbow.jpg"]="scaled"
    ["cole_thomas_two_lakes.jpg"]="zoom"
    ["cole_thomas_garden_of_eden.jpg"]="zoom"
    ["constable_wivenhoe_park.jpg"]="zoom"
    ["constable_harwich_lighthouse.jpg"]="zoom"
    ["lorrain_claude_queen_of_sheba.jpg"]="scaled"
    ["lorrain_claude_the_enchanted_castle.jpg"]="zoom"
    ["turner_calais_pier.jpg"]="zoom"
    ["turner_houses_of_lords.jpg"]="zoom"
)

num_images=${#wallpapers[@]}

if [ $num_images -ne ${#option_dict[@]} ]; then
    echo "wallpaper.sh error: malformed script data"
    exit 1
fi

max_index=$((num_images-1))
random_index=$(shuf -n 1 -i 0-$max_index)

wallpaper_path=${wallpapers[$random_index]}
wallpaper_name=${wallpaper_path##*/}

# GNOME command-line tool
gsettings set org.gnome.desktop.background picture-options  ${option_dict[$wallpaper_name]}
gsettings set org.gnome.desktop.background picture-uri-dark file://localhost${wallpaper_path}
gsettings set org.gnome.desktop.background picture-uri      file://localhost${wallpaper_path}
