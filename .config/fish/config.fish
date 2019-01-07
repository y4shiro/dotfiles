# Path to Oh My Fish install.
set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
set -gx OMF_CONFIG "$HOME/.config/omf"

# homebrew
set -x PATH /usr/local/bin /usr/local/sbin $PATH

# rbenv
#eval "$(rbenv init -)";
# set -x PATH $HOME/.rbenv/bin $PATH
set -x PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

# nodebrew
set -x PATH $HOME/.nodebrew/current/bin $PATH

# Android dev
set -x ANDROID_HOME $HOME/Library/Android/sdk $ANDROID_HOME
set -x PATH $ANDROID_HOME/tools $PATH
set -x PATH $ANDROID_HOME/platform-tools $PATH

# aws-sam
set -x USER_BASE_PATH (python -m site --user-base) $USER_BASE_PATH
set -x PATH $USER_BASE_PATH $USER_BASE_PATH/bin $PATH

## mysql
set -x PATH /usr/local/opt/mysql@5.7/bin $PATH

# Aliases
abbr ll 'ls -la'

# Functions
function cd
  builtin cd $argv
  ls -la
end
