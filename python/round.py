#FILE FOR EVERY ROUND OF A GAME
import random, mysql
import player
import functions
player = player.Player("branx","Anneli",)
locations_prueba = random.sample(functions.locations_available_list,4)
def round():
    print(f"\nROUND"
          f"\nGAME STATUS:"
          f"\n   USERNAME: {player.username}           DAYS LEFT: 10                 SCORE: 1000"
          f"\n   PILOT: {player.pilot}            CURRENT LOCATION: {player.current_location}   FUEL: {player.fuel}"
          f"\n\nLOCATIONS"
          f"\n TOWN NAME                  ARTIFACT                   RARITY                   DESCRIPTION"
          f"\n1. {locations_prueba[0][0]}               {locations_prueba[0][1][1]}                     {locations_prueba[0][1][2]}                  {locations_prueba[0][1][3]} "
          f"\n2. {locations_prueba[1][0]}               {locations_prueba[1][1][1]}                      {locations_prueba[1][1][2]}                  {locations_prueba[1][1][3]}"
          f"\n3. {locations_prueba[2][0]}               {locations_prueba[2][1][1]}                      {locations_prueba[2][1][2]}                 {locations_prueba[2][1][3]}"
          f"\n4. {locations_prueba[3][0]}               {locations_prueba[3][1][1]}                       {locations_prueba[3][1][2]}                 {locations_prueba[3][1][3]}")
         # f"\n  OPTION 1                   OPTION 2                   OPTION 3                OPTION 4"
         # f"\n   {locations_prueba[0][0]}                 {locations_prueba[1][0]}                  {locations_prueba[2][0]}                {locations_prueba[3][0]}"
         # f"\n   ITEM: {locations_prueba[0][1][1]}                 ITEM: {locations_prueba[1][1][1]}                  ITEM: {locations_prueba[2][1][1]}                ITEM: {locations_prueba[3][1][1]}"
         # f"\n   RARITY: {locations_prueba[0][1][2]}             RARITY: {locations_prueba[1][1][2]}              RARITY: {locations_prueba[2][1][2]}            RARITY: {locations_prueba[3][1][2]}"
         # f"\n   {locations_prueba[0][0]}                 {locations_prueba[1][0]}                  {locations_prueba[2][0]}                {locations_prueba[3][0]}"


round()