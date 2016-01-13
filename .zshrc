#
# User configuration sourced by interactive shells
#

autoload -U promptinit
promptinit

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

# Enable auto-completion
fpath=(/usr/local/share/zsh-completions $fpath)

zprompt_theme='eriner'
zmodules=(archive directory environment input git history ssh utility \
	  syntax-highlighting history-substring-search prompt completion)
zssh_ids=(id_rsa)

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin 

# This loads nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" 

# Keep brew happy 
PATH="/usr/local/sbin:$PATH"

