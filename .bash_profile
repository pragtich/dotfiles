# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence; I do this in .bashrc
#export PATH=/usr/local/bin:$PATH

# Read autocomplete stuff if present
#if [ -f /sw/etc/bash_completion ]; then
#        . /sw/etc/bash_completion
#fi

#fink path setup
test -r /sw/bin/init.sh && . /sw/bin/init.sh

# locale for remote logins
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# editor setup
#export EDITOR='/Applications/Aquamacs.app/Contents/MacOS/bin/emacsclient'
#export EDITOR="/Applications/Aquamacs.app/Contents/MacOS/bin/emacsclient -a /Applications/Aquamacs.app/Contents/MacOS/Aquamacs"
#export ALTERNATE_EDITOR=/Applications/Aquamacs.app/Contents/MacOS/Aquamacs

#This works because I changed /usr/bin/emacs to be a shell script that refers to Aquamacs' binary. But: ugly startup and problems
#export EDITOR='/Applications/Aquamacs.app/Contents/MacOS/bin/emacsclient -a "" '
#export VISUAL="$EDITOR -c"


####### Last working (A	uamacs)
#export EDITOR="/Applications/Aquamacs.app/Contents/MacOS/bin/emacsclient -a aquamacs"
#Force Aquamacs to go graphical when I use the visual 
#export VISUAL="$EDITOR -c"
# Force Aquamacs to start in the first line when working with git to prevent commit message cursor position trouble
#export GIT_EDITOR="$VISUAL +0"

#export ALTERNATE_EDITOR="/Applications/Emacs.app/Contents/MacOS/Emacs"
#export EDITOR="emacsclient -s \"/tmp/emacs${UID}/server\"  \"\$@\""

export ECLIENT="emacsclient -s /tmp/emacs${UID}/server -a /Applications/Emacs.app/Contents/MacOS/Emacs"
export EDITOR="$ECLIENT \$@ "
export VISUAL=$EDITOR
export GIT_EDITOR="$VISUAL +0"

#alias e="$VISUAL &"
#alias ew="$VISUAL -c &"

function e()
{
    $ECLIENT "$@" &
}

function ew()
{
    $ECLIENT -c "$@" &
}

#alias folie='cd ~/bluepill/embello/project;  ~/go/bin/folie -r'


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

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

