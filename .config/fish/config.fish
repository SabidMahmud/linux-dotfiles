if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""
set -gx TERM xterm-256color

# aliases
#alias ls "ls -p -G"
alias ls "exa --icons"
alias la "ls -l --icons"
alias ll "ls -la --icons"
alias lls "ll -A --icons"
alias lla "ll -T --icons"
alias g git
alias install "sudo pacman -S"
alias update "sudo pacman -Sy"
alias upgrade "sudo pacman -Syyu"
alias remove "sudo pacman -R"

command -qv nvim && alias vim nvim

set -gx EDITOR nvim
