#!/usr/bin/env fish

function fish_prompt
    set_color purple
    set -l d (string replace $HOME "~" $PWD)
    if [ $d = "~" ]
        printf "~ "
    else if [ $d = "/" ]
        printf "/ "
    else
        echo $d
    end
    set_color green
    echo "➜ "
end
