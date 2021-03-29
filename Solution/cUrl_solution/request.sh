#!/bin/bash

printf "\r\nRequest : $1 \r\nResponse : " >> response.out
curl -X POST  "https://api.cognitive.microsofttranslator.com/detect?api-version=3.0" -H "Ocp-Apim-Subscription-Key: $COGNITIVE_SERVICE_KEY" -H "Content-Type: application/json" -d "[{'Text':'$1'}]" >> response.out
