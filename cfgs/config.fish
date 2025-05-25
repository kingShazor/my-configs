if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init fish | source
end
alias ls='ls -la'
#function fish_prompt
#    printf '%s%s%s > '
#        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)   ...
#end
