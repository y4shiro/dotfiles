set fish_theme agnoster

# rbenv
#eval "$(rbenv init -)";
# set -x PATH $HOME/.rbenv/bin $PATH
set -x PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

# Aliases
abbr ll 'ls -la'

# Functions
function cd
  builtin cd $argv
  ls -la
end
