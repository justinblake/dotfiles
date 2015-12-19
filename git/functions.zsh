
h_reset () {
  git checkout master
  git delete-tag $1
  git reset --hard $2
  git push --force
  git checkout develop
  git reset --hard $2
  git push --force
}

skip () {
  local message=${1:-ci}
  git commit -a -m "chore(skip): $message"
}

gq () {
  local message=${1:-quick}
  git commit -a -m "chore(rel): $message" -q
  git push --no-verify
}

# ff () {
#   if [[ ! "$1"]] ; then
#     return
#   fi
#   git add .
#   git commit -a -m "feat($1): $2"
# }
#
# fix () {
#   if [[ ! "$1"]] ; then
#     return
#   fi
#   git add .
#   git commit -a -m "fix($1): $2"
# }
#
# perf () {
#   if [[ ! "$1"]] ; then
#     return
#   fi
#   git add .
#   git commit -a -m "perf($1): $2"
# }
#
# chore () {
#   if [[ ! "$1"]] ; then
#     return
#   fi
#   git add .
#   git commit -a -m "chore($1): $2"
# }

# test () {
#   git add .
#   git commit -a -m "test($1): $2"
# }
