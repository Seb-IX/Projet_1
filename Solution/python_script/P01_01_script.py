from azure.core.credentials import AzureKeyCredential
from azure.ai.textanalytics import TextAnalyticsClient

import sys, os

# Initialisation de la clé
key = os.environ["COGNITIVE_SERVICE_KEY"]
# Initialisation du endpoint
endpoint = os.environ["COGNITIVE_SERVICE_ENDPOINT"]

def authenticate_client():
    ta_credential = AzureKeyCredential(key)
    text_analytics_client = TextAnalyticsClient(
            endpoint=endpoint, 
            credential=ta_credential) 
    return text_analytics_client
   
client = authenticate_client()

def language_detection_example(client,documents):
    try:
        response = client.detect_language(documents = documents, country_hint = 'us')
        return response

    except Exception as err:
        print("Encountered exception. {}".format(err))
        
def format_document(args):
    document=[]
    for i in range(1,len(args)):
        # 0 is script name
        doc ={}
        doc["id"]=i
        doc["text"]=str(args[i])
        document.append(doc)
    return document

def format_response(resultat):
    for doc in resultat:
        print("Language detected: {}".format(doc.primary_language.name))
        print("ISO6391 name: {}".format(doc.primary_language.iso6391_name))
        print("Confidence score: {}".format(doc.primary_language.confidence_score))
        print("ID document: {}\n".format(doc.id))


document = format_document(sys.argv)

resultat = language_detection_example(client,document)

format_response(resultat)