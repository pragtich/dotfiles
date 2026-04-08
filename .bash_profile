# Get the aliases and functions
#if [ -f ~/.bashrc ]; then
#        . ~/.bashrc
#fi

# If .profile is present, I probably want to source it (Mint)
# Mint's .profile also sources .bashrc if we're running bash
[[ -f ~/.profile ]] && source ~/.profile

# locale for remote logins
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


if [[ "$OSTYPE" == "darwin"* ]]; then 
    # Setting PATH for Python 2.7
    # The orginal version is saved in .bash_profile.pysave
    #PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
    #export PATH
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
    fi

    # Set path for homebrew Ruby
    export LDFLAGS="$LDFLAGS -L/usr/local/opt/ruby/lib -L/usr/local/opt/libffi/lib"
    export CPPFLAGS="$CPPFLAGS -I/usr/local/opt/ruby/include"
    export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/ruby/lib/pkgconfig:/usr/local/opt/libffi/lib/pkgconfig"
    export GEM_HOME="$HOME/.gem"
    export PATH="$GEM_HOME/bin:$HOME/.rbenv/shims:$GEM_HOME/ruby/2.6.0/bin:$PATH"
    export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"  # Links to homebrew OpenSSL to let it be updated
    eval "$(rbenv init -)"
    
    
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



