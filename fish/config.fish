# anyenv
set -g fish_user_paths ~/.anyenv/bin $fish_user_paths
status --is-interactive; and source (anyenv init -|psub)

# nodenv
set -g NDENV_ROOT ~/.anyenv/envs/ndenv
set -g fish_user_paths ~/.anyenv/envs/ndenv/bin $fish_user_paths
set -g fish_user_paths $NDENV_ROOT/shims $fish_user_paths

# rbenv
status --is-interactive; and source (rbenv init -|psub)

# homebrew
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# Aliases
abbr ll 'ls -la'

# bobthefish
set -g theme_date_timezone Asia/Tokyo
set -g theme_date_format "+%Y/%m/%d (%a) %H:%M:%S"

# fzf
set -g FZF_LEGACY_KEYBINDINGS 0
set -g FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"
set -g fish_user_paths "/usr/local/opt/openjdk@11/bin" $fish_user_paths
