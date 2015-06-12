# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi


### Extra git aliases from tj holowaychuk ###
alias gca="git commit -a -m"
alias gl="git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"

### my git aliases ###
alias g.s='git browse'
alias gpr='git pull-request -b develop'
