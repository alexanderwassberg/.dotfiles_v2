# No fish_greeting
set fish_greeting
fish_ssh_agent

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Autoloads Starship Prompt
starship init fish | source

# Exa & Listings
alias ll "exa --long --icons"
alias ls "exa --grid --icons"

# Git
alias g "git"
alias gu "gitui"

# Weather Shortcut
set city saffle # Add your city
alias weather "curl wttr.in/$city"
