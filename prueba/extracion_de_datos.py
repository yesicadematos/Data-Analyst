from cgitb import text
import requests
import json  
import csv
import pandas as pd
url1 ="https://datos.cultura.gob.ar/dataset/37305de4-3cce-4d4b-9d9a-fec3ca61d09f/resource/4207def0-2ff7-41d5-9095-d42ae8207a5d/download/museos_datosabiertos.csv"
url2 = "https://datos.cultura.gob.ar/dataset/37305de4-3cce-4d4b-9d9a-fec3ca61d09f/resource/392ce1a8-ef11-4776-b280-6f1c7fae16ae/download/cine.csv"
url3 = "https://datos.cultura.gob.ar/dataset/37305de4-3cce-4d4b-9d9a-fec3ca61d09f/resource/01c6c048-dbeb-44e0-8efa-6944f73715d7/download/biblioteca_popular.csv"
#url4 = "https://datos.cultura.gob.ar/dataset/37305de4-3cce-4d4b-9d9a-fec3ca61d09f/resource/4207def0-2ff7-41d5-9095-d42ae8207a5d/download/museos_datosabiertos.csv"
#url5 = "https://datos.cultura.gob.ar/dataset/37305de4-3cce-4d4b-9d9a-fec3ca61d09f/resource/456d1087-87f9-4e27-9c9c-1d9734c7e51d/download/biblioteca_especializada.csv"
r = requests.get(url2)
date= r.text
#df = pd.DataFrame(r)
# df = pd.read_csv("https://datos.cultura.gob.ar/dataset/37305de4-3cce-4d4b-9d9a-fec3ca61d09f/resource/456d1087-87f9-4e27-9c9c-1d9734c7e51d/download/biblioteca_especializada.csv"
# df.head()

with open('./biblioteca.csv', 'w+', encoding='UTF-8') as f :
    f.write(date)

print(date)

