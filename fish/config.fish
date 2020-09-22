# rbenv
set -x PATH $HOME/.rbenv/bin $PATH
status --is-interactive; and source (rbenv init -|psub)

# homebrew
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# Aliases
abbr ll 'ls -la'
