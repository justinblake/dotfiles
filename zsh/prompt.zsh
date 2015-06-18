autoload colors && colors
export VIRTUAL_ENV_DISABLE_PROMPT=yes
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      echo "on %{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "on %{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

unpushed () {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " is %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}

ruby_version() {
  if (( $+commands[rbenv] ))
  then
    echo "$(rbenv version | awk '{print $1}')"
  fi

  if (( $+commands[rvm-prompt] ))
  then
    echo "$(rvm-prompt | awk '{print $1}')"
  fi
}

rb_prompt() {
  if ! [[ -z "$(ruby_version)" ]]
  then
    echo "%{$fg_bold[yellow]%}$(ruby_version)%{$reset_color%} "
  else
    echo ""
  fi
}

py_ver(){
    python -V 2>&1 | sed -e 's/Python //'
}

py_prompt() {
  if ! [[ -z "$(py_ver)" ]] then
    echo "%{$fg[magenta]%}py›$(py_ver)%{$reset_color%}"
  else
    echo ""
  fi
}

ENV_PROMPT_PREFIX="activated "
ENV_PROMPT_SUFFIX=" in"
# reset_color="${fg_bold[white]}"

virtualenv_prompt_info() {
    local name=""
    if [ -n "$VIRTUAL_ENV" ]; then
        name="${fg_bold[green]}$(basename $VIRTUAL_ENV)"
    else
        name="${fg_bold[red]}nothing"
    fi
    echo "$ENV_PROMPT_PREFIX$name$reset_color$ENV_PROMPT_SUFFIX"
}
_newline=$'\n'
_lineup=$'\e[1A'
_linedown=$'\e[1B'


directory_name() {
  echo "%{$fg_bold[cyan]%}%1/%\/%{$reset_color%}"
}

me() {
  echo "${fg_bold[yellow]}%m$reset_color"
}

export PROMPT=$'\n$(me) $(virtualenv_prompt_info) $(directory_name) $(git_dirty)$(need_push)\n→ '
# export PROMPT=$'\n$(colors)\n> '
set_prompt () {
  export RPROMPT=%{${_lineup}%}$(py_prompt)%{${_linedown}%}
  # export RPROMPT="%{$fg_bold[cyan]%}%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
