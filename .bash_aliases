alias update='sudo apt update'
alias upgrade='sudo apt update && sudo apt upgrade -y'
alias install='sudo apt install'
alias autoremove='sudo apt autoremove'

alias ls='ls --color=auto --group-directories-first'
alias la='ls -A'                             # list all
alias ll='ls -alhGg --classify'              # list long
alias lt='ls -I ".git" -TA --level=2 | bat'  # list tree (uses eza)
alias l='ls'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias mv='mv -v'
alias mkdir='mkdir -pv'
alias please='sudo $(history -p !!)'
alias path='echo -e ${PATH//:/\\n}'

alias sudo='sudo '
alias shutdown='sudo shutdown'
alias reboot='sudo reboot'
alias quit='exit'
alias clr='clear'
alias more='less'
alias sctl='systemctl'

alias vi='nvim'
# alias vi='vim'
alias vimrc='vi ~/.vimrc'
alias nvimrc='cd ~/.config/nvim'
alias aliases='vi ~/.bash_aliases'
alias bashrc='vi ~/.bashrc'
alias sbashrc='source ~/.bashrc'

alias ga='git add'
alias gcomm='git commit -m'
alias gpush='git push'
alias gclone='git clone'
alias gd='git diff'
alias gs='git status'
alias glog='git log'
alias ghead='echo "" && git show-ref && echo "" && git log -1 && echo ""'

alias myip='hostname -I'                   # private
alias mypubip='curl -sw "\n" ifconfig.me'  # public
alias whereami="curl -s https://json.geoiplookup.io/$(mypubip) | jq -r '.city, .country_name'"
alias ping='ping -c 5'
alias ports='ss -tulanp'
alias nc='nc -v'
alias tar='tar -xzvf'  # extract *.tar.gz files
alias diskspace='du -S | sort -n -r | more'

alias py=$(which python3.11)
