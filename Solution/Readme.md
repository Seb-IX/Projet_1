# Requierement :
- CURL
- jupyter, notebook
- python / anaconda

# To create Coginitive Service on microsft AZURE :
 
1 - create account on portal.AZURE (https://portal.azure.com/)
2 - create subscription cost (eg. : pay to use)
3 - create ressources group with your subscription cost as you want
4 - create ressource Cognitive service (https://portal.azure.com/#create/Microsoft.CognitiveServicesAllInOne) and associate with your ressources group (choose location gloabl) and use your tariff level
5 - Now you can take key to access and endpont (for global endpoint : https://api.cognitive.microsofttranslator.com/)

## 2 solution is Enable : 
# Before any solution please store key access) 

Windows :
=> setx COGNITIVE_SERVICE_KEY <API_KEY> /m
Linux : 
=> export COGNITIVE_SERVICE_KEY=<API_KEY>
MacOS :
=> export COGNITIVE_SERVICE_KEY=<API_KEY>

# first is cUrl solution script :

Windows :
=> cUrl_Solution/requestSecured.bat "The text you want to test for language detection"

Linux :
=> cd cUrl_Soltion 
=> ./request.sh "The text you want to test for language detection"

MacOS :
=> cd cUrl_Soltion 
=> bash request.sh "The text you want to test for language detection"

Response store in => response.out


# run anaconda cmd or navigator and go to root project :

1 - open CognitiveServiceAzure
2 - run all Cell

