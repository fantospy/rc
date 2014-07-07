export PATH=/usr/local/bin:$PATH
export PATH=/Applications:$PATH
export PATH=/Users/laurent/Documents/sh/:$PATH
export PATH=/usr/local/octave/3.8.0/bin/:$PATH
export PATH=/opt/cisco/anyconnect/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH # MAc Port


# VTK
#export PATH=/Users/laurent/Documents/eth/lib/VTK-6.1.0/VTKBuild/bin:$PATH
#export PATH=/Users/laurent/Documents/eth/lib/VTK-6.1.0/VTKBuild/include/vtk-6.1/:$PATH
#export DYLD_LIBRARY_PATH=/Users/laurent/Documents/eth/lib/VTK-6.1.0/VTKBuild/lib:$DYLD_LIBRARY_PATH 
#export LD_LIBRARY_PATH=/Users/laurent/Documents/eth/lib/VTK-6.1.0/VTKBuild/lib:$LD_LIBRARY_PATH 

# Mode VI 
set -o vi 
alias vi="/usr/local/stow/vim-7.3/bin/vim"
alias vim="/usr/local/stow/vim-7.3/bin/vim"
# if needed, the original is here: /usr/bin/vim

# History
export HISTSIZE=100000
export HISTFILESIZE=100000
shopt -s histappend 

# Alias for MRAG
alias makec="make clean && make -j 2 alexia config=production fmm-order=8 && make -j 2 rl config=production fmm-order=8"

 #Alias
alias ..='cd ../'
alias ...="cd ../../"
alias ....="cd ../../../"
alias oo="open -a"
alias q="logout"
alias cp="rsync -avz"
alias ll='ls -Flh'
alias la='ls -a'
alias h='history'
alias cdd="cd ~/Documents"
alias cdw="cd ~/Downloads"
alias cdc="cd ~/Documents/guide/cse"
alias cd1="cd /Volumes/inBrutus" # With MAcfusion
alias cd2="cd /Users/laurent/Documents/MRAG/MRAGapps/IF2D_ROCKS" # With MAcfusion
alias cd3="cd /Users/laurent/Documents/brutus-mount/in/MRAG/MRAGapps/IF2D_ROCKS"
alias cd4="cd /Users/laurent/Documents/brutus-mount/out"
alias sshb="ssh -Yt laurentm@brutus.ethz.ch" # Brutus connection
alias sshb3="ssh -Y laurentm@brutus3.ethz.ch" # Brutus connection
alias c=clear
alias reload="source ~/.bash_profile"
alias grep='grep --color=auto'
alias cs="vpn -s connect sslvpn.ethz.ch" # CISCO AnyConnect
alias dcs="vpn disconnect" # CISCO AnyConnect
alias qfind="find . -name " # qfind:    Quickly search for file
alias matlab="matlab -nodesktop -nosplash"
#alias octave="/usr/local/bin/octave-3.8.1"
alias octave="/opt/local/bin/octave-3.6.4"

# MRAG 
alias cds="cd /Users/laurent/Documents/MRAG/MRAGapps/IF2D_ROCKS/source/" 
alias cdl="cd /Users/laurent/Documents/MRAG/MRAGapps/IF2D_ROCKS/launch/" 
alias cdm="cd /Users/laurent/Documents/MRAG/MRAGapps/IF2D_ROCKS/makefiles/" 

# Mount brutus folder 
alias sso="sshfs laurentm@brutus.ethz.ch:/cluster/scratch_xp/public/laurentm/ /Users/laurent/Documents/brutus-mount/out/"
alias usso="umount -f /Users/laurent/Documents/brutus-mount/out/"
alias ussi="umount -f /Users/laurent/Documents/brutus-mount/in/"
alias ssi="sshfs laurentm@brutus.ethz.ch:/cluster/home03/mavt/laurentm/ /Users/laurent/Documents/brutus-mount/in/"
alias ssd="sso && ssi"
alias ussd="usso && ussi"

# Alias for Git
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gba='git branch -a'
#alias gc='git commit'
gc () { git commit -m "$*" ; }    
alias gd='git diff'
alias go='git checkout '
alias gh='git hist'
alias gk='gitk --all&'
alias gx='gitx --all'


# Function
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string
tu () { /usr/bin/tar -xzvf "$@" "X"; }    # Decompress
tuu () { /usr/local/bin/mkdir "$@"%%.* ;  /usr/bin/tar -xzvf "$@" -C "X$@"; }    # Decompress
tx () { FILE=$@; echo ${FILE%%.*} ; FOLDER=${FILE%%.*} ;  /usr/local/bin/mkdir "$FOLDER" ;  /usr/bin/tar -xzvf "$@" -C "$FOLDER";}    # Decompress
tc () { /usr/bin/tar -czvf "$@" ; }    # Decompress

# Color shell
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
#alias ls='ls -GFh'
alias ls='ls --color=auto'

# Specific folder at start
#cd ~/Documents

#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#    . $(brew --prefix)/etc/bash_completion
#fi

#ba () { cp $1 ${1}-`date +%Y%m%d%H%M`.backup ; }
#echo -ne "${BRIGHT_VIOLET}Sysinfo:";uptime 

# --------------
# Git
# --------------
if [ -f ~/.git-completion.bash ]; then
. ~/.git-completion.bash
fi
