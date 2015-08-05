alias ls="ls -lG"
export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
