# Requierement :
- cUrl
- python / anaconda / pip

# To create Coginitive Service on microsft AZURE :
 
1. Create account on portal.AZURE (https://portal.azure.com/)
2. Create subscription cost (eg. : pay to use)
3. Create ressources group with your subscription cost as you want
4. Create ressource Cognitive service "text analytic" (https://portal.azure.com/#create/Microsoft.CognitiveServicesTextAnalytics) and associate with your ressources group (choose your favorite location) and use your tariff level => "Free F0"
5. Now you can take key to access and endpont on your ressource create => "Keys and Endpoint"

# Download data on :

After <a href="https://s3-eu-west-1.amazonaws.com/static.oc-static.com/prod/courses/files/AI+Engineer/Project+1+Discover+the+AI%C2%A0Engineer+Job/Dataset+project+1+AI%C2%A0Engineer.zip">download</a>, 
put files in /Solution/data/ 

# 3 solutions is enable  :

Before use any solution, set your environement variable like this :<br> 
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

## 1) cUrl solution script :

Windows :<br>
=> cUrl_Solution/request.bat "The text you want to test for language detection"

Linux :<br>
=> ./request.sh "The text you want to test for language detection"

MacOS :<br>
=> bash request.sh "The text you want to test for language detection"

Response store in => response.out


## 2) notebook run anaconda cmd or navigator and go to root project :

open notebook :<br>
`jupyter notebook P01_01_script.ipynb`

## 3) python script solution

to use this script (on "python_script" directory) run on shell/cmd :<br>
`py P01_01_script.py "arg1 to detect language" "arg2 another text to detect" "And much text as you want..."`

# To see notebook on slideshow mode :

Open the file 'P01_01_script.slide.html' to see in slideshow mode the notebook file (more confortable).

# Useful command :

Creation of the slideshow mode (well organized in the notebook the layout of the slides : View => Cell Toolbar => Diaporama)<br>
`jupyter nbconvert P01_01_script.ipynb --to slides --post serve` <br>

To use environement conda : <br>
`conda env create --file environment.yaml`<br>

And after created virtual environment :<br>
`conda activate env_p1`<br>

To deactivate virutal environment :<br>
`conda deactivate env_p1`<br>

To remove environment :<br>
`conda env remove --name env_p1`
