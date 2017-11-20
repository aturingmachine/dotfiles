function parse_git_branch() {
        BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
        if [ ! "${BRANCH}" == "" ]
        then
                STAT=`parse_git_dirty`
                echo "[${BRANCH}${STAT}]"
        else
                echo ""
        fi
}

function parse_git_dirty {
        status=`git status 2>&1 | tee`
        dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
        untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
        ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
        newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
        renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
        deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
        bits=''
        if [ "${renamed}" == "0" ]; then
                bits=">${bits}"
        fi
        if [ "${ahead}" == "0" ]; then
                bits="*${bits}"
        fi
        if [ "${newfile}" == "0" ]; then
                bits="+${bits}"
        fi
        if [ "${untracked}" == "0" ]; then
                bits="?${bits}"
        fi
        if [ "${deleted}" == "0" ]; then
                bits="x${bits}"
        fi
        if [ "${dirty}" == "0" ]; then
                bits="!${bits}"
        fi
        if [ ! "${bits}" == "" ]; then
                echo " ${bits}"
        else
                echo ""
        fi
}

#Create the initial prompt styling
export PS1="\[\e[36m\]☭\[\e[m\] \[\e[36m\] \@ \[\e[32m\]\u\[\e[m\]\[\e[35m\]@\[\e[m\]\[\e[35m\]\w\[\e[m\] \[\e[36m\]\`parse_git_branch\`\[\e[m\] \[\e[36m\]:\[\e[m\]  "

# I am a lazy son of a bitch
alias ls='ls -aGhp'
alias ll='ls -alGhp'
alias proj='cd ~/Projects'
alias oh='cd ~/Homestead; vagrant up; cd ~/Projects/OH-API'
alias vag='~/bin/vag.sh'
alias pstorm='open -a /Users/turing/Applications/JetBrains\ Toolbox/PhpStorm.app'
alias bp='vim ~/.bash_profile'
alias vs='~/bin/vs.sh'
alias backup='~/bin/backup.sh'
alias storage='ls -alGhp /Volumes/STORAGE/bkup'
alias chrome='open -a Google\ Chrome'
#Do more magicks pls
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export PATH=$PATH:~/bin



code () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}
