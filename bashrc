
# ruby env for jekyll docs
export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=/usr/local/lib/ruby/gems/2.6.0/bin:$PATH

# helps avoid python "OS Error Too many open files"
ulimit -n 4096

# set caps lock as escape on unix
# xmodmap -e "clear lock" #disable caps lock switch
# xmodmap -e "keysym Caps_Lock = Escape" #set caps_lock as escape

# Quality of Life imports
TERM=xterm-256color
alias ls="ls -lGHh"
alias ll="ls -alh"

# Adding important development paths to python
export PYTHONPATH="/Users/peter/dojomojo/DojoMojo-Production-Data-Science/:$PYTHONPATH"

# Spark Path
export PATH="$PATH:/usr/local/Cellar/apache-spark/2.4.3/bin"
export PATH="$PATH:/Users/peter/.cargo/bin"

PS1=" $ "

# Appends git branch to prompt
# parse_git_branch() {
#   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }
# export PS1="$(parse_git_branch)\[\033[00m\] $ "

# Anaconda added to path
export PATH="$PATH:/Users/peter/anaconda3/bin"
# Golang added to path
export PATH="$PATH:/usr/local/go/bin"
conda activate ml
alias python="python3.6"
