#!/bin/zsh
ANTIBODY_BINARIES="$(dirname $0)"
echo FUCK $ANTIBODY_BINARIES
mkdir -p "$HOME/.antibody" || true

antibody() {
  local bundles="$(${ANTIBODY_BINARIES}/antibody $@)"
  echo BUNDLES $bundles
  echo $bundles | while read bundle; do
    source "$bundle"/*.plugin.zsh
  done
}
