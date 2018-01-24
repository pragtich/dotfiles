# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# locale for remote logins
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

case $OSTYPE  in
    linux*)  EMACS='emacs' ;;
    darwin*) EMACS='/Applications/Emacs.app/Contents/MacOS/Emacs' ;;
esac
export EMACS

export ECLIENT="emacsclient -s /tmp/emacs${UID}/server -a $EMACS"
export EDITOR="$ECLIENT \$@ "
export VISUAL=$EDITOR
export GIT_EDITOR="$VISUAL +0"

function e()
{
    $ECLIENT "$@" &
}
export -f e

function ew()
{
    $ECLIENT -c "$@" &
}
export -f ew

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [[ "$OSTYPE" == "darwin" ]]; then 
    # Setting PATH for Python 2.7
    # The orginal version is saved in .bash_profile.pysave
    #PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
    #export PATH
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
    fi

    #Bash prompt for git status
    #https://github.com/magicmonty/bash-git-prompt
    GIT_PROMPT_ONLY_IN_REPO=1
    
    if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
	source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
    fi
    if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
	source /usr/local/git/contrib/completion/git-completion.bash
    fi
fi

