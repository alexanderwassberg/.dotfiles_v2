# No fish_greeting
set fish_greeting
fish_ssh_agent

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx XDG_MUSIC_DIR "~/Music/"
set -gx BROWSER "brave"

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

alias gu "gitui"

# Weather Shortcut
set city saffle # Add your city
alias weather "curl wttr.in/$city"

# Dotfiles Aliases
alias nvimconf "cd ~/.dotfiles_v2/nvim/.config/nvim/"
alias fishconf "cd ~/.dotfiles_v2/fish/.config/fish/"
alias i3conf "cd ~/.dotfiles_v2/i3/.config/i3/"
alias polybarconf "cd ~/.dotfiles_v2/polybar/.config/polybar/"
alias kittyconf "nvim ~/.dotfiles_v2/kitty/.config/kitty/kitty.conf"

fish_add_path /home/wassberg/.spicetify

alias of "python3 ~/ordflaket_2.0/generator.py"
alias gl "python3 ~/wh/gitlab_issues.py"
