#!/usr/bin/env bash

# Author: jcolours
# Date: 2026-05-26
# Description: Tool that simple seeks the remotes found in git remote
# and uses it to automate the push process

# Function Name: main
# Purpose: Run the main script program
main() {
  echo
  for REPO in $(git remote); do
    echo "Remote: $REPO"
    git push "$REPO"
    echo
  done
  exit 0 # status success
}

main
