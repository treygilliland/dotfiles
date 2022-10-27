#!/bin/bash

TMPDIR=$(mktemp -d)

CURRENT=$PWD

cd $TMPDIR

for script in ~/.dotfiles/scripts/*.sh; do
  bash "$script" &
done

wait
cd $CURRENT

rm -rf $TMPDIR
