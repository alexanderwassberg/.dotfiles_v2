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

# Kanagawa Fish shell theme
set -l foreground DCD7BA
set -l selection 2D4F67
set -l comment 727169
set -l red C34043
set -l orange FF9E64
set -l yellow C0A36E
set -l green 76946A
set -l purple 957FB8
set -l cyan 7AA89F
set -l pink D27E99

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
