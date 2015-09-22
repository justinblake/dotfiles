
gff () {
  git add .
  git commit -a -m "feat($1): $2"
}

fix () {
  git add .
  git commit -a -m "fix($1): $2"
}

perf () {
  git add .
  git commit -a -m "perf($1): $2"
}

chore () {
  git add .
  git commit -a -m "chore($1): $2"
}

test () {
  git add .
  git commit -a -m "test($1): $2"
}
