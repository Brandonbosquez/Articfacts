import requests
import json
#https://en.wikipedia.org/api/rest_v1/page/summary/Helsinki

town = "kouvola"
request = "https://en.wikipedia.org/api/rest_v1/page/summary/" + town
response = requests.get(request).json()
print(json.dumps(response["extract"], indent=2))