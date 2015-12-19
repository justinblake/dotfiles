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
alias gcaa='git commit -a -n -m'
alias gc='git commit -a -v'
# alias gl="git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"
alias gl='git log --graph --pretty=format:'\''%C(bold red)%h%Creset %C(bold cyan)%an%Creset -%C(bold yellow)%d%Creset %s %Cgreen(%cr) '\'' --abbrev-commit'
alias gla='git log --graph --pretty=format:'\''%C(bold red)%h%Creset %C(bold cyan)%an%Creset -%C(bold yellow)%d%Creset %s %Cgreen(%cr) '\'' --abbrev-commit --all'

alias gbda='git branch --no-color --merged | grep -vE "^(\*|\s*master\s*$|\s*develop\s*$|\s*dev\s*$)" | xargs -n 1 git branch -d'

### my git aliases ###
alias gun='git checkout -- .' # remove unstaged changes
alias g.s='git browse'
alias gpr='git pull-request -b develop'
alias groot='cd $(git rev-parse --show-cdup)'
alias gcd='git checkout develop'
alias gmd='git merge develop'
alias root='cd $(git rev-parse --git-dir)/..'
alias greset='git reset --hard HEAD~1'
alias del-b='git delete-branch'
alias del-t='git delete-tag'
alias a.what='alias | grep '

### oss aliases
alias gpo='git push j-walker23'
