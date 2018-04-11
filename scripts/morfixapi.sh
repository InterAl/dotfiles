#!/bin/bash
res=$(curl -s -H 'Content-Type: application/json' -X POST -d '{"Query": "'$1'", "ClientName": "Android_Hebrew"}' http://ec2-52-27-201-176.us-west-2.compute.amazonaws.com/TranslationHebrew/TranslationService.svc/GetTranslation/)
inputStr=$(echo $res | jq -r .Words[0].InputLanguageMeanings[0][0].DisplayText)
outputStr=$(echo $res | jq -r '.Words | map(.OutputLanguageMeanings[] | map(.DisplayText)) | map(join(", ")) | join(" | ")')
echo $inputStr
echo $outputStr | rev
