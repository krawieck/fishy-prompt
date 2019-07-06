#!/usr/bin/env fish

function fish_right_prompt
    set s $status
    if test $s -ne 0
        set_color red
        echo $s
        set_color normal
    end
end
