alias zshrc='vim ~/.zshrc' # Quick access to the ~/.zshrc file
alias zshconfig="vim ~/.zshrc"
alias mydots="atom $D"
alias engine="vim /usr/local/etc/nginx/nginx.conf"
alias launch="vim /etc/launchd.conf"

# ls, the common ones I use a lot shortened for rapid fire usage
# alias l='ls -lFh'     #size,show type,human readable
alias l='gls -lFAh --color'
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'

alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '

alias t='tail -f'
alias hgrep="fc -El 0 | grep"
alias help='man'
alias p='ps -f'

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection
