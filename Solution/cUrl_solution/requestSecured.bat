@echo off
:: get the input
set input=%1
:: set input
:: this line allows to remove quote
set input=%input:"=%

echo "Request :" >> response.out
echo %input% >> response.out
echo "Response :" >> response.out

curl --data "" "https://api.cognitive.microsoft.com/sts/v1.0/issueToken?Subscription-Key=%COGNITIVE_SERVICE_KEY%" > passw.txt
:: Optimize request authentification any 10 minute (valided time TOKEN)
set /p passw=<.\passw.txt

curl -X POST "https://api.cognitive.microsofttranslator.com/detect?api-version=3.0" -H "Authorization: Bearer %passw%" -H "Content-Type: application/json" -d "[{'Text':'%input%'}]" >> response.out
