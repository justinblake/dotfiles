#!/usr/bin/env zsh

function add_corrects () {
	if [ -f ~/.zsh_nocorrect ]; then
	    while read -r COMMAND; do
	        alias $COMMAND="nocorrect $COMMAND"
	    done < ~/.zsh_nocorrect
	fi
}

function insert_nocorrect {
	local var1="tail -2 .zsh_history| head -1 | awk -F: '{print $3}'"
	print $var1
	local var2=(${(ps:;:)var1})
	print $var2[1]
		# print !! >> ~/.zsh_nocorrect
}

git_track() {
	remote=origin
	# for name in $names; do
	# 	command git branch --track $name $remote/$name
	# done
	for name in `
		git branch -r | grep $remote | grep -v master | grep -v HEAD | awk '{gsub(/^[a-z]+\//,"",$1); print $1}'
	`; do
		# echo $name
		# git checkout $name
		# command git pull
		# command echo "${name} ${remote}/${name}"
		command git branch --track $name $remote/$name
	done

}

git_track_SO() {
	local remote=origin
	for brname in `
	  git branch -r | grep $remote | grep -v master | grep -v HEAD | awk '{gsub(/[^\/]+\//,"ass",$1); print $1}'
	`; do
	  git branch --track $brname  $remote/$brname ;
	done
}
