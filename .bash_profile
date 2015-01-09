# Aliases

alias be="bundle exec"
alias df="df -ih"
alias sk="karma start --browsers PhantomJS --reporters progress,osx"
alias pcb="echo $(git rev-parse --abbrev-ref HEAD)"
alias pidport=pidOfPort

# Git Customisation

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
alias git=hub
alias g=git
complete -o default -o nospace -F _git g

# Ruby Environment

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Node Environment

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

# Functions

# Get the process ID behind the listening port
function pidOfPort() {
  lsof -ti tcp:$1
}

# Install a grunt plugin and save to devDependencies
function gi() {
  npm install --save-dev grunt-"$@"
}

# Install a grunt-contrib plugin and save to devDependencies
function gci() {
  npm install --save-dev grunt-contrib-"$@"
}

# Exports

export PATH=$HOME/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$HOME/development/useful-scripts
export PATH=$PATH:$HOME/development/ec2-api-tools/bin
export no_proxy=localhost

# startup virtualenv-burrito
if [ -f $HOME/.venvburrito/startup.sh ]; then
    . $HOME/.venvburrito/startup.sh
fi
