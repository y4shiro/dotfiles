set fish_theme agnoster

# cd > ls
function cd
  builtin cd $argv
  ls -a
end

# ls -la
alias ll='ls -la'
