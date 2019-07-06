#!/usr/bin/env fish

function fish_right_prompt
    if test $status -ne 0
        set_color red
        echo $status
        set_color normal
    end
end
