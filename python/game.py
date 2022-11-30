#SEÑOR JESUCRISTO BENDICE ESTE CÓDIGO
#GAME RUNS HERE
import functions
import player
print("Welcome to Articfacts")
username= input(f"Choose a username: ")
print(f"\nWelcome {username}!")
pilot = int(input(f"Choose a pilot [ 1.Anneli, 2.Maria, 3.Jean ]: "))


while True:
    if pilot == 1:
        print("Anneli chosen!")
        pilot = "Anneli"
        break

    elif pilot == 2:
        print("Maria chosen!")
        pilot = "Maria"
        break
    elif pilot == 3:
        print("Jean chosen!")
        pilot = "Jean"
        break

    else:
        print("Pilot invalid!")
        pilot = int(input(f"Choose a pilot [ 1.Anneli, 2.Maria, 3.Jean ]: "))

player = player.Player(username,pilot)
print(player.username)


