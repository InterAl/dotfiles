#!/usr/bin/env bash
set -euo pipefail

SOURCE="${BASH_SOURCE[0]}"
while [ -L "$SOURCE" ]; do
    DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
    SOURCE="$(readlink "$SOURCE")"
    case "$SOURCE" in
        /*) ;;
        *) SOURCE="$DIR/$SOURCE" ;;
    esac
done

DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

for i in * .[^.]*; do
    # Never link the repository metadata into $HOME. If ~/.git points here,
    # Git commands run from $HOME will treat the whole home directory as this repo.
    [ "$i" = ".git" ] && continue

    path=$DIR/$i
    ln -sfn "$path" "$HOME/$i"
done
