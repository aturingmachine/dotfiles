export ZSH=/Users/turing/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"
 CASE_SENSITIVE="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

 alias zsc="vim ~/.zshrc"
 alias chrome="open -a Google\ Chrome"
 alias gs="git status"
 alias gc="git commit -m"
 alias ls="ls -Ga"
 alias ll="ls -Gal"
 alias s="source ~/.zshrc" 

POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_VCS_FOREGROUND="white"
