#!/usr/bin/env bash
for i in * .[^.]*; do
    #current dir (dotfiles dir)
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
    path=$DIR/$i
    ln -sf $path ../$i
done
