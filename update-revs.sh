#!/bin/bash -eux

git ls-remote "https://github.com/Bithack/principia" refs/heads/master | awk '{print $1}' > principia.rev

git add principia.rev

if [ -n "${GITHUB_ENV:-}" ]; then
  echo "PRINCIPIA_REV=$(cat principia.rev)" >> "$GITHUB_ENV"
fi
