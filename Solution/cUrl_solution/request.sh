#!/bin/bash

printf "\r\nRequest : $1 \r\nResponse : " >> response.out
curl -X POST "$COGNITIVE_SERVICE_ENDPOINT/text/analytics/v3.0/languages" -H "Ocp-Apim-Subscription-Key: $COGNITIVE_SERVICE_KEY" -H "Content-Type: application/json" -d "{'documents':[{'id':1,'text':'$1'}]}" >> response.out
