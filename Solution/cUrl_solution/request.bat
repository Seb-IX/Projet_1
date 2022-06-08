@echo off
:: get the input
set input=%1
:: set input
:: this line allows to remove quote
set input=%input:"=%
echo ""
echo "Request :" >> response.out
echo %input% >> response.out
echo "Response :" >> response.out

curl -X POST "%COGNITIVE_SERVICE_ENDPOINT%/text/analytics/v3.0/languages" -H "Ocp-Apim-Subscription-Key: %COGNITIVE_SERVICE_KEY%" -H "Content-Type: application/json" -d "{'documents':[{'id':1,'text':'%input%'}]}" >> response.out

