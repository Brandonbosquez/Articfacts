#INICIO DE PROYECTO FINAL PROCEDURAL PROGRAMMING
#funciones que arman la lógica del juego

import mysql.connector
import geopy
import time, os, importlib, random
connection = mysql.connector.connect(
    host='127.0.0.1',
    port=3306,
    database='articfacts',
    user='root',
    password='MariaDB123',
    autocommit=True
)
options = 31
current_location = "Helsinki"
def locations_list_function():
    sql = "SELECT town FROM airports"
    cursor = connection.cursor()
    cursor.execute(sql)
    result = cursor.fetchall()

    locations = []
    for x in range (options):
        locations.append(result[x][0])
    return locations

def artifacts_list_function():
    sql = "SELECT id FROM artifacts"
    cursor = connection.cursor()
    cursor.execute(sql)
    result = cursor.fetchall()

    artifacts = []
    for x in range(options):
        artifacts.append(result[x][0])
    return artifacts


#print(random.sample(artifacts_list,options))
#Randomize what artifact is contained in each location and store in database
def random_artifacts_function():
    artifacts_list = artifacts_list_function()
    locations_list = locations_list_function()
    random_artifacts_list = random.sample(artifacts_list,options)
    for i in range(options):
        sql = "UPDATE airports SET artifact ="+str(random_artifacts_list[i])+" WHERE town ='"+locations_list[i]+"'; "
        cursor = connection.cursor()
        cursor.execute(sql)
    return random_artifacts_list,locations_list

    return random_artifacts_list
random_artifacts_list = []
random_artifacts_list = random_artifacts_function()


#I need to collect all the information to create an object for each location available :(
def locations_available_function():
    locations_list = []
    locations_list = random_artifacts_function()[1]
    ready_locations = []
    for i in range(options):
        locations_available_list =["",["","","",""],["",""]]
        sql = "SELECT town, artifact,latitude_deg,longitude_deg FROM airports WHERE town='"+locations_list[i]+"';"
        cursor = connection.cursor()
        cursor.execute(sql)
        result = cursor.fetchall()
        locations_available_list[0] = result[0][0]
        locations_available_list[1][0] = result[0][1]
        locations_available_list[2] = [result[0][2],result[0][3]]


        #test print
        #print(locations_available_list)
        ready_locations.append(locations_available_list)
    print(ready_locations)
    for i in range(options):
        sqlo = "SELECT name, rarity,description FROM artifacts WHERE id ='"+str(ready_locations[i][1][0])+"';"
        cursor = connection.cursor()
        cursor.execute(sqlo)
        resultado = cursor.fetchall()

        #result2[0][0], result2[0][1], result2[0][2]]
        ready_locations[i][1][1] = resultado[0][0]
        ready_locations[i][1][2] = resultado[0][1]
        ready_locations[i][1][3] = resultado[0][2]
        print(ready_locations[i])


    return ready_locations

locations_available_list = locations_available_function()
print(locations_available_list)

#FAILED CLASS
"""""
class Town():
    def __init__(self,name,id,artifact,rarity,description,latitude,longitude):
        self.name = name
        self.artifact = [id,artifact,rarity,description]
        self.position = [latitude,longitude]
ready_locations_list = []
for i in range(options):
    ready_locations_list = Town(locations_available_list[i][0], locations_available_list[i][1][0], locations_available_list[i][1][1], locations_available_list[i][1][2],locations_available_list[i][1][3],locations_available_list[i][2][0],locations_available_list[i][2][1])
"""""
print("4 DE PRUEBA")
pruebitas = []
pruebitas = random.sample(locations_available_list,4)
print(pruebitas, sep = "\n")
##FUNTIONS DURING THE GAME