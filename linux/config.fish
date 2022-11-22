# Aliases

alias python="python3"


# Git Abbrevations
abbr gpu 'git push -u origin HEAD'
abbr dockerclean 'docker stop $(docker ps -aq) && docker rm $(docker ps -aq)'
abbr gp 'git push'
abbr gpu 'git push -u origin HEAD'
abbr gcm 'git commit -m' 
abbr gpl 'git pull'
abbr gs 'git status'
abbr gsw 'git switch'
abbr gb 'git branch'

# Abbrevations

abbr k 'kubectl'

#fish_vi_key_bindings

if status is-interactive
    # Commands to run in interactive sessions can go here
    eval (starship init fish)
end

thefuck --alias | source
:
