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

Windows :
=> setx COGNITIVE_SERVICE_KEY <API_KEY> /m
Linux : 
=> export COGNITIVE_SERVICE_KEY=<API_KEY>
MacOS :
=> export COGNITIVE_SERVICE_KEY=<API_KEY>

Windows :
=> setx COGNITIVE_SERVICE_ENDPOINT <ENDPOINT> /m
Linux : 
=> export COGNITIVE_SERVICE_ENDPOINT=<ENDPOINT>
MacOS :
=> export COGNITIVE_SERVICE_ENDPOINT=<ENDPOINT>

## first is cUrl solution script :

Windows :
=> cUrl_Solution/request.bat "The text you want to test for language detection"

Linux :
=> cd cUrl_Soltion 
=> ./request.sh "The text you want to test for language detection"

MacOS :
=> cd cUrl_Soltion 
=> bash request.sh "The text you want to test for language detection"

Response store in => response.out


## second is notebook run anaconda cmd or navigator and go to root project :

Ourvrir le notebook :
`jupyter notebook P01_01_script.ipynb`

# Comamande utile :

Création du mode slideshow (bien organiser dans le notebook la disposition des diapos : View => Cell Toolbar => Diaporama)
`jupyter nbconvert P01_01_script.ipynb --to slides --post serve`