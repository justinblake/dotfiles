# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
# hub_path=$(which hub)
# if (( $+commands[hub] ))
# then
#   alias git=$hub_path
# else
#   print 'no hub?!'
# fi


### Extra git aliases from tj holowaychuk ###
alias gca="git commit -a -m"
alias gc='git commit -a -v'
alias gl="git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"

### my git aliases ###
alias g.s='git browse'
alias gpr='git pull-request -b develop'
alias groot='cd $(git rev-parse --show-cdup)'
alias gcd='git checkout develop'
alias gmd='git merge develop'
alias root='cd $(git rev-parse --git-dir)/..'

alias a.what='alias | grep '
