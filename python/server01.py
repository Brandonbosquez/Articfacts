importrandom

fromflaskimportFlask,request
importmysql.connector
fromflask_corsimportCORS
importrequests
importjson
fromgeopyimportdistance

connection=mysql.connector.connect(
host='127.0.0.1',
port=3306,
database='articfacts',
user='root',
password='MariaDB123',
autocommit=True
)
options=31
deflocations_list_function():
sql="SELECTtownFROMairports"
cursor=connection.cursor()
cursor.execute(sql)
result=cursor.fetchall()

locations=[]
forxinrange(options):
locations.append(result[x][0])
returnlocations

defartifacts_list_function():
sql="SELECTidFROMartifacts"
cursor=connection.cursor()
cursor.execute(sql)
result=cursor.fetchall()

artifacts=[]
forxinrange(options):
artifacts.append(result[x][0])
returnartifacts

defrandom_artifacts_function():
artifacts_list=artifacts_list_function()
locations_list=locations_list_function()
random_artifacts_list=random.sample(artifacts_list,options)
foriinrange(options):
sql="UPDATEairportsSETartifact="+str(random_artifacts_list[i])+"WHEREtown='"+locations_list[i]+"';"
cursor=connection.cursor()
cursor.execute(sql)
returnrandom_artifacts_list,locations_list

returnrandom_artifacts_list
random_artifacts_list=[]
random_artifacts_list=random_artifacts_function()

deflocations_available_function():
locations_list=[]
locations_list=random_artifacts_function()[1]
ready_locations=[]
foriinrange(options):
locations_available_list=["",["","","",""],["",""]]
sql="SELECTtown,artifact,latitude_deg,longitude_degFROMairportsWHEREtown='"+locations_list[i]+"';"
cursor=connection.cursor()
cursor.execute(sql)
result=cursor.fetchall()
locations_available_list[0]=result[0][0]
locations_available_list[1][0]=result[0][1]
locations_available_list[2]=[result[0][2],result[0][3]]


#testprint
#print(locations_available_list)
ready_locations.append(locations_available_list)

foriinrange(options):
sqlo="SELECTname,rarity,descriptionFROMartifactsWHEREid='"+str(ready_locations[i][1][0])+"';"
cursor=connection.cursor()
cursor.execute(sqlo)
resultado=cursor.fetchall()

#result2[0][0],result2[0][1],result2[0][2]]
ready_locations[i][1][1]=resultado[0][0]
ready_locations[i][1][2]=resultado[0][1]
ready_locations[i][1][3]=resultado[0][2]



returnready_locations

start_location=['Helsinki',[60.1699,24.9384]]
current_location=start_location[1]


defcalculate_distance(other_location):
sql="selectlocationfromscoreboardorderbyiddesclimit1;"
cursor=connection.cursor()
cursor.execute(sql)
result=cursor.fetchall()

sql2="selectlatitude_deg,longitude_degfromairportswheretown='"+result[0][0]+"';"
cursor=connection.cursor()
cursor.execute(sql2)
result2=cursor.fetchall()

current_pos=[result2[0][0],result2[0][1]]

distancia=int(distance.geodesic(current_pos,other_location).km)
print(distancia)
returndistancia


all_options=locations_available_function()
pruebitas=[]
pruebitas=random.sample(all_options,4)
#print(pruebitas)


#APPLIKATIONINITIERAD
app=Flask(__name__)
cors=CORS(app)
app.config['CORS_HEADERS']='Content-Type'


#Delakodenpålitebitaryusarenaquellaspartes
@app.route('/username/<name>')
defstore_name(name):
username=str(name)
sql="INSERTINTOscoreboard(username,pilot)VALUES('"+username+"','Brann');"
cursor=connection.cursor()
cursor.execute(sql)
print(f"Username{name}storedindatabase")

returnprint("stored")


@app.route('/fouroptions')
deffour_options():
four_options=random.sample(all_options,4)


distance1=calculate_distance([four_options[0][2][0],four_options[0][2][1]])
distance2=calculate_distance([four_options[1][2][0],four_options[1][2][1]])
distance3=calculate_distance([four_options[2][2][0],four_options[2][2][1]])
distance4=calculate_distance([four_options[3][2][0],four_options[3][2][1]])

#distance1=1
#distance2=2
#distance3=3
#distance4=4

response1={"option1":{
"town":four_options[0][0],
"id":four_options[0][1][0],
"artifact":four_options[0][1][1],
"rarity":four_options[0][1][2],
"description":four_options[0][1][3],
"lat":four_options[0][2][0],
"long":four_options[0][2][1],
"distance":distance1,
"fuel":distance1*3
}
,"option2":{
"town":four_options[1][0],
"id":four_options[1][1][0],
"artifact":four_options[1][1][1],
"rarity":four_options[1][1][2],
"description":four_options[1][1][3],
"lat":four_options[1][2][0],
"long":four_options[1][2][1],
"distance":distance2,
"fuel":distance2*3
},
"option3":{
"town":four_options[2][0],
"id":four_options[2][1][0],
"artifact":four_options[2][1][1],
"rarity":four_options[2][1][2],
"description":four_options[2][1][3],
"lat":four_options[2][2][0],
"long":four_options[2][2][1],
"distance":distance3,
"fuel":distance3*3
},
"option4":{
"town":four_options[3][0],
"id":four_options[3][1][0],
"artifact":four_options[3][1][1],
"rarity":four_options[3][1][2],
"description":four_options[3][1][3],
"lat":four_options[3][2][0],
"long":four_options[3][2][1],
"distance":distance4,
"fuel":distance4*3
}
}
returnresponse1

@app.route('/movelocation/<new>/<username>')
defmove(new,username):
newx=str(new)
usernamex=str(username)
sql="UPDATEscoreboardSETlocation='"+newx+"'WHEREusername='"+usernamex+"';"
cursor=connection.cursor()
cursor.execute(sql)
returnprint("locationchangedindatabase:D")

@app.route('/wiki/<search>')
defwiki(search):
town=search
request="https://en.wikipedia.org/api/rest_v1/page/summary/"+town
response=requests.get(request).json()
print(json.dumps(response["extract"],indent=2))
extract=[response["extract"]]
returnextract

@app.route('/remove/<town>')
defremover(town):
lugar=town
foriinall_options:
ifi[0]==lugar:
print(i)
i[1][0]=0
i[1][1]="None"
i[1][2]="---"
i[1][3]="Noartifacthere!"

print(i[1][1])
print(i)
returni




"""
@app.route('/distance/<current>&&<new>')
defdistance(current,new):
distance=calculate_distance(current,new)
returndistance"""

#SEGUNDOAPIINTENTO
"""
@app.route('/info')
definformation():
#key=cuestion
requesto="https://en.wikipedia.org/w/api.php?action=query&prop=extracts&exlimit=1&titles=pizza&explaintext=1&exsectionformat=plain"
response=requests.get(requesto)
json_response=response.json()
#print(json.dumps(json_response,indent=2))
returnjson_response"""




if__name__=='__main__':
app.run(use_reloader=True,host='127.0.0.1',port=5000)
app.debug=True
