#!/usr/bin/env fish

function parse_git_branch
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
end

function fish_prompt
    set_color purple
    set -l d (string replace $HOME "~" $PWD)
    if [ $d = "~" ]
        printf "~ "
    else if [ $d = "/" ]
        printf "/ "
    else
        echo $d (parse_git_branch)
    end
    set_color green
    echo "➜ "
end
