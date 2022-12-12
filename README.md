# Articfacts
## Final Project - Flight Game

GROUP 5: Brandon Bósquez Gonzal

Software 2: Procedural Programming Class TXL22S1 – B

## Introduction 

The project of a flight game as a final project was assigned. In this document the functionalities and capabilities of the project are described. A detailed explanation of the user experience with the game can found, as well as possible paths for gameplay and user experience. 
This is composed of the following chapters: 
*	Introduction 
* [Vision](#vision)
*	[Functional requirements](#functional-requirements)
*	[Quality requirements](#quality-requirements)
*	[Implementation](#implementation)
*	[Index for files](#index)

### Extra Information:
The game's name is **ARTICFACTS**, this is a play on the words 
* *Artic* (being that the story takes place during winter in Finland)
* *Artifact* (since the game is based in collecting items, also called artifacts)
The locations the player can travel to, are called towns or destinations. All these words will be used interchangeably in this document.

## Vision

### Backstory for the game:
The setting is Finland. The National Museum of Finland in Helsinki is preparing for it's annual and biggest exhibition. This year's topic is "Finnish Historic and Cultural Artifacts". 
These artifacts are stored all over the major cities in Finland, and were supposed to be sent by truck to Helsinki. This year, a very harsh winter has hit Finland and the
roads are all blocked by meters of snow! You are the best pilot in the country, and have been contacted by the museum, tasked with flying all over Finland to collect these precious artifacts. You have
limited time as the exhibition is only in 10 days. Only you can make the exhibition be a success!

### Type of game:
This game is based in collecting items. Items have different values. Before starting the game, the player is given a list of items that they must collect before time runs out.
If they manage to collect all the items, they win, if not, they loose.

## Functional Requirements
### General path followed by a player:
1. Player is asked for their username

2. They receive a "letter" (in the form of a textbox popup in the webpage) explaining the basic backstory for the game, and their goals to reach.

>> On the UI, the user gets a display of four options to choose from, these four options come in the form of Finnish town names. These towns each contain a different item. Each item has a different rarity
### Example of the UI, displaying four different towns and artifacts:
<img width="707" alt="Captura de pantalla_20221211_120939" src="https://user-images.githubusercontent.com/111736314/206924406-ac174047-aec4-4986-9285-a60d336161e9.png"> 

3. The game starts, the player can choose to travel to whichever location they choose, collecting the artifact stored in this location.

    a. The game continues until the time runs out
  
4. Once the time runs out:

    a. If the goals are not met: **player looses**
  
     b. If the goals are met: **player wins!**

## Quality Requirements

The quality and experience of the user was the central point during the development of this application. Made sure that the game runs smoothly, the goals and functionalities of the game are explained in a comprehensible way, the visual and interactive elements are eye-catching and entertaining.

### Technologies used:

* SQL Database - Database created specifically for the game, storing all the necessary information for the game to run
* Python - Backend - Server using Flask - Object oriented programming used for ease of development
* HTML and CSS - Frontend - Webpage used for the UI
* JavaScript - Middleman between Frontend and Backend

## Implementation

This application's file are stored in this GitHub Repository.
### For evaluation:
The repository is divided in folders, in the Python folder you can find the Python Programming, in the HTML folder you can find HTML-CSS-JavaScript

The three main files are: server.py, game.js, game.html (**The game runs mainly on these files**)

#### Index

* python/server.py: in this python file you can find the backend of the game. The server using Flask framework runs here.
* html/javascript/game.js : in this javascript you can find part of the frontend of the game. Here the communication between front and back is made using JSON fetch. The UI is made interactive with JavaScript.
* html/game.html: here you can find the frontend and visual interactive UI
* html/css/stylegame.css: here you can find the CSS file used to format the HTML file, adding visual elements.
* database/artifacts.sql: in this sql file you find the database data.
* html/img: in this folder you can find other folder used to give visual elements to the game




