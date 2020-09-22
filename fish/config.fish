# rbenv
set -x PATH $HOME/.rbenv/bin $PATH
status --is-interactive; and source (rbenv init -|psub)

# homebrew
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# Aliases
abbr ll 'ls -la'

# bobthefish
set -g theme_date_timezone Asia/Tokyo
set -g theme_date_format "+%Y/%m/%d (%a) %H:%M:%S"
