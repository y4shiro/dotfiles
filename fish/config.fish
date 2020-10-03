# anyenv
set -x PATH $HOME/.anyenv/bin $PATH
status --is-interactive; and source (anyenv init -|psub)

# nodenv
set -x NDENV_ROOT $HOME/.anyenv/envs/ndenv
set -x PATH $HOME/.anyenv/envs/ndenv/bin $PATH
set -x PATH $NDENV_ROOT/shims $PATH

# rbenv
status --is-interactive; and source (rbenv init -|psub)
set -x RUBY_CONFIGURE_OPTS --with-openssl-dir=(brew --prefix openssl@1.1)

# homebrew
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# Aliases
abbr ll 'ls -la'

# bobthefish
set -g theme_date_timezone Asia/Tokyo
set -g theme_date_format "+%Y/%m/%d (%a) %H:%M:%S"

# fzf
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"
