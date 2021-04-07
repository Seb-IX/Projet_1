# Requierement :
- cUrl
- jupyter, notebook
- python / anaconda

# To create Coginitive Service on microsft AZURE :
 
1. Create account on portal.AZURE (https://portal.azure.com/)
2. Create subscription cost (eg. : pay to use)
3. Create ressources group with your subscription cost as you want
4. Create ressource Cognitive service "text analytic" (https://portal.azure.com/#create/Microsoft.CognitiveServicesTextAnalytics) and associate with your ressources group (choose your favorite location) and use your tariff level => "Free F0"
5. Now you can take key to access and endpont on your ressource create => "Keys and Endpoint"

# Download data on :

https://s3-eu-west-1.amazonaws.com/static.oc-static.com/prod/courses/files/AI+Engineer/Project+1+Discover+the+AI%C2%A0Engineer+Job/Dataset+project+1+AI%C2%A0Engineer.zip

# 2 solution is Enable :

Windows :<br>
=> setx COGNITIVE_SERVICE_KEY <API_KEY> /m<br>
Linux : <br>
=> export COGNITIVE_SERVICE_KEY=<API_KEY><br>
MacOS :<br>
=> export COGNITIVE_SERVICE_KEY=<API_KEY><br>
<br>
Windows :<br>
=> setx COGNITIVE_SERVICE_ENDPOINT <API_ENDPOINT> /m<br>
Linux : <br>
=> export COGNITIVE_SERVICE_ENDPOINT=<API_ENDPOINT><br>
MacOS :<br>
=> export COGNITIVE_SERVICE_ENDPOINT=<API_ENDPOINT><br>

## first is cUrl solution script :

Windows :<br>
=> cUrl_Solution/request.bat "The text you want to test for language detection"

Linux :<br>
=> ./request.sh "The text you want to test for language detection"

MacOS :<br>
=> bash request.sh "The text you want to test for language detection"

Response store in => response.out


## second is notebook run anaconda cmd or navigator and go to root project :

Ourvrir le notebook :<br>
`jupyter notebook P01_01_script.ipynb`

# Comamande utile :

Création du mode slideshow (bien organiser dans le notebook la disposition des diapos : View => Cell Toolbar => Diaporama)<br>
`jupyter nbconvert P01_01_script.ipynb --to slides --post serve`
