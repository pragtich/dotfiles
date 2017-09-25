
#Larger open file limit for duplicity / duply
ulimit -n 1024

PS1='\h:\W \u\$ '

#Bind commands
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

#History
export HISTSIZE=10000
shopt -s histappend

shopt -s checkwinsize
shopt -s autocd
shopt -s cdspell
shopt -s dirspell
shopt -s checkjobs
shopt -s cmdhist
shopt -s globstar

export IGNOREEOF=1

PATH=~/go/bin:$PATH
PATH=/Applications/Emacs.app/Contents/MacOS:$PATH
PATH=$PATH:~/.gem/ruby/1.8/bin
PATH=/usr/local/sbin:/usr/local/bin:$PATH
export PATH
