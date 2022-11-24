# No fish_greeting
set fish_greeting
fish_ssh_agent

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Autoloads Starship Prompt
starship init fish | source

# Directories
alias . "cd .."
alias .. "cd ../.."

# Neovim
alias v nvim

# Exa & Listings
alias ll "exa --long --icons"
alias ls "exa --grid --icons"

# Git
alias gp "git push"
alias gpl "git pull"
alias gf "git fetch"

alias g "git"
alias gu "gitui"

# Weather Shortcut
set city saffle # Add your city
alias weather "curl wttr.in/$city"

# Youtube FZF
alias yt "ytfzf -t"

# Dotfiles Aliases
alias nvimconf "cd ~/.dotfiles/nvim/.config/nvim/"
alias fishconf "cd ~/.dotfiles/fish/.config/fish/"
alias i3conf "cd ~/.dotfiles/i3/.config/i3/"
alias polybarconf "cd ~/.dotfiles/polybar/.config/polybar/"
alias kittyconf "nvim ~/.dotfiles/kitty/.config/kitty/kitty.conf"

fish_add_path /home/wassberg/.spicetify
