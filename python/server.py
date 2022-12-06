import random

from flask import Flask, request
import mysql.connector
from flask_cors import CORS
import requests
import json
from geopy import distance

connection = mysql.connector.connect(
    host='127.0.0.1',
    port=3306,
    database='articfacts',
    user='root',
    password='MariaDB123',
    autocommit=True
)
options = 31
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

    for i in range(options):
        sqlo = "SELECT name, rarity,description FROM artifacts WHERE id ='"+str(ready_locations[i][1][0])+"';"
        cursor = connection.cursor()
        cursor.execute(sqlo)
        resultado = cursor.fetchall()

        #result2[0][0], result2[0][1], result2[0][2]]
        ready_locations[i][1][1] = resultado[0][0]
        ready_locations[i][1][2] = resultado[0][1]
        ready_locations[i][1][3] = resultado[0][2]



    return ready_locations

start_location = ['Helsinki',[60.1699,24.9384]]
current_location = start_location[1]


def calculate_distance(other_location):
    sql = "select location from scoreboard order by id desc limit 1;"
    cursor = connection.cursor()
    cursor.execute(sql)
    result = cursor.fetchall()

    sql2 = "select latitude_deg, longitude_deg from airports where town ='" + result[0][0] + "' ;"
    cursor = connection.cursor()
    cursor.execute(sql2)
    result2 = cursor.fetchall()

    current_pos = [result2[0][0], result2[0][1]]

    distancia = int(distance.geodesic(current_pos, other_location).km)
    print(distancia)
    return distancia


all_options = locations_available_function()
pruebitas = []
pruebitas = random.sample(all_options,4)
#print(pruebitas)



app = Flask(__name__)
cors = CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'


@app.route('/username/<name>')
def store_name(name):
    username = str(name)
    sql = "INSERT INTO scoreboard (username, pilot) VALUES ('" + username + "', 'Brann');"
    cursor = connection.cursor()
    cursor.execute(sql)
    return print("Username stored in database")


@app.route('/fouroptions')
def four_options():
    four_options = random.sample(all_options, 4)

    """
    distance1 = calculate_distance([four_options[0][2][0], four_options[0][2][1]])
    distance2 = calculate_distance([four_options[1][2][0], four_options[1][2][1]])
    distance3 = calculate_distance([four_options[2][2][0], four_options[2][2][1]])
    distance4 = calculate_distance([four_options[3][2][0], four_options[3][2][1]])
    """

    distance1 = 1
    distance2 = 2
    distance3 = 3
    distance4 = 4

    response1 = { "option1": {
            "town": four_options[0][0],
            "id": four_options[0][1][0],
            "artifact": four_options[0][1][1],
            "rarity": four_options[0][1][2],
            "description": four_options[0][1][3],
            "lat": four_options[0][2][0],
            "long": four_options[0][2][1],
            "distance": distance1
        }
        ,"option2" :  {
            "town" : four_options[1][0],
            "id" : four_options[1][1][0],
            "artifact" : four_options[1][1][1],
            "rarity" : four_options[1][1][2],
            "description" : four_options[1][1][3],
            "lat": four_options[1][2][0],
            "long": four_options[1][2][1],
            "distance": distance2
        },
        "option3": {
            "town": four_options[2][0],
            "id": four_options[2][1][0],
            "artifact": four_options[2][1][1],
            "rarity": four_options[2][1][2],
            "description": four_options[2][1][3],
            "lat": four_options[2][2][0],
            "long": four_options[2][2][1],
            "distance": distance3
        },
        "option4": {
            "town": four_options[3][0],
            "id": four_options[3][1][0],
            "artifact": four_options[3][1][1],
            "rarity": four_options[3][1][2],
            "description": four_options[3][1][3],
            "lat": four_options[3][2][0],
            "long": four_options[3][2][1],
            "distance": distance4
        }
    }
    return response1

@app.route('/movelocation/<new>/<username>')
def move(new, username):
    newx = str(new)
    usernamex = str(username)
    sql = "UPDATE scoreboard SET location ='" + newx + "' WHERE username ='" + usernamex + "' ;"
    cursor = connection.cursor()
    cursor.execute(sql)
    return print("location changed in database :D")

"""
@app.route('/distance/<current>&&<new>')
def distance(current, new):
    distance = calculate_distance(current, new)
    return distance"""

#SEGUNDO API INTENTO
"""
@app.route('/info')
def information():
    #key = cuestion
    requesto = "https://en.wikipedia.org/w/api.php?action=query&prop=extracts&exlimit=1&titles=pizza&explaintext=1&exsectionformat=plain"
    response = requests.get(requesto)
    json_response = response.json()
    #print(json.dumps(json_response, indent=2))
    return json_response"""




if __name__ == '__main__':
    app.run(use_reloader=True, host='127.0.0.1', port=5000)
    app.debug = True