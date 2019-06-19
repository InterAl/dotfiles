#!/bin/bash
#str=${1}
#str=${str// /%20}
#curl -s https://www.morfix.co.il/${str} | tr "\n" " " | grep -E -o '<div.*?normal_translation_div'

~/dotfiles/scripts/morfix.js ${1} | rev
