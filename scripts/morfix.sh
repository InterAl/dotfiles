#!/bin/bash
str=${1}
str=${str// /%20}
curl -s www.morfix.co.il/${str} | grep "translation translation_he heTrans" | sed 's/<div.*>\(.*\)<\/div>/\1/g' | rev
