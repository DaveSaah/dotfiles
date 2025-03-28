if status is-interactive
    function fish_greeting
    end
end

starship init fish | source
direnv hook fish | source
eval (fzf --bash)
