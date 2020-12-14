# Aliases
alias ..="cd .."

alias browse=nautilus
alias bye='logout'
alias bz2="sudo tar -xvfj"
alias bzip2='bzip2 -v'

alias clean="sudo rm -fr $HOME/.Trash/"
alias clear='clr'
alias clr='clear;echo "Currently logged in on $(tty), as $(whoami) in directory $(pwd).";screenfetch'
alias cls='clear;echo "Currently logged in on $(tty), as $(whoami) in directory $(pwd).;screenfetch"'
alias copy='cp -i'
alias cp='cp -i'
alias csl='clear;echo "Currently logged in on $(tty), as $(whoami) in directory $(pwd)."'

alias date="date '+%a-%h-%d%t%r'"
alias dates="/bin/date '+%s'"
alias defrag="sudo defrag"
alias del='rm -i'
alias df='df -h'
alias dl="sudo wget"
alias du='du -h'
alias ducks='du -cks * | sort -rn | head'

alias findpkg='apt-cache search'

alias gcc='colorgcc'
alias gen_wpa='apg -s -a 1 -m 63 -n 4'

alias home="cd ~"

alias info="uname -a"
alias install="sudo apt-get install"
alias is="psa ww | grep -v '^$USER .* $$ .* grep' | grep"

alias j=jobs

alias l='ls -CF'
alias l.='ls -dF .[a-zA-Z0-9]* --color=tty' #only show dotfiles
alias la='ls -A'
alias ll='ls -lhF --color=tty' #long listing
alias lookup="gnome-dictionary"
alias ls='ls -F --color=tty' #regular ls

alias make='colormake'
alias menu.lst="sudo gedit /boot/grub/menu.lst"
alias mkdir="mkdir -p"
alias mktar='tar -cvvf'
alias move='mv -i'
alias mv='mv -i'

alias nano="sudo nano"
alias netstati="netstat --verbose --tcp --udp --programs --extend"

alias pkginfo='apt-cache show'
alias playm='for i in *.mp3; do play $i; done'
alias playo='for i in *.ogg; do play $i; done'
alias playw='for i in *.wav; do play $i; done'
alias psa='ps axo "user,pid,ppid,%cpu,%mem,tty,stime,state,command"';
alias purge="sudo apt-get --purge remove"
alias python='/usr/bin/python3.7'

alias reboot='sudo reboot'
alias remove="sudo apt-get autoremove"
alias rm='rm -i'
alias rmbk='/bin/rm -f .*~ *~ *aux *bak *log *tmp 2> /dev/null'
alias rootb="gksudo nautilus"

alias sbrowse='sudo nautilus'
alias search="sudo apt-cache search"
alias show='apt-cache show'
alias smemtp='smem -t -p'
alias smemw='smem -w'
alias smemu='smem -u'
alias smemm='smem -m'
alias sources="sudo gedit /etc/apt/sources.list"
alias su="su -l"
alias synaptic="gksudo synaptic"

alias tail='tail -f'
alias tgz="sudo tar -xvfz"
alias trace="traceroute -n"

alias u='cd ..'
alias untbz2="tar -xvfj"
alias untar='tar -xvvf'
alias untgz="tar -xvfz"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get update && sudo apt-get dist-upgrade -y"

alias wget="sudo wget"
