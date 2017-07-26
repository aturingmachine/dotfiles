export ZSH=/Users/turing/.oh-my-zsh
ZSH_THEME="lambda"
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

