#PY DOCUMENT FOR CODE RELATING TO A NEW PLAYER
import functions

class Player():
    def __init__(self,username,pilot="none",goals=0,score=0,fuel=0,current_location="Helsinki"):
        self.username = username
        self.pilot = pilot
        self.goals= goals
        self.score= score
        self.fuel = fuel
        self.current_location = current_location

    def anneli(self):
        self.pilot="Anneli"
        self.fuel= 100

    def maria(self):
        self.pilot = "María"
        self.fuel = 80

    def jean(self):
        self.pilot = "Jean"
        self.fuel = 120


