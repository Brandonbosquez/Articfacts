'use strict';

var map = L.map('map').setView([65.0511, 27.0576], 5);

var hielito = L.icon({
    iconUrl: 'img/hielito.png',

    iconSize:     [25, 22], // size of the icon
    iconAnchor:   [10, 10], // point of the icon which will correspond to marker's location
    popupAnchor:  [1, -5] // point from which the popup should open relative to the iconAnchor
});

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

// FUNCION PARA EL MODAL :D
async function closeModal(){
    modal2.setAttribute("class", "modal");
    overlay.setAttribute("class", "");

}

let modalloose = document.getElementById("modal-loose");
let modalwin = document.getElementById("modal-win");
let modal2 = document.getElementById("modal2");
let overlay = document.getElementById("overlay");
let exit = document.getElementsByClassName("close-button").item(0);
exit.addEventListener("click", closeModal);





let id = 0
async function storePlayer(name) {
    let url = "http://127.0.0.1:5000/username/" + name;
    const response = await fetch(url);
    if (!response.ok) throw new Error('Invalid server input.');
}


const selectedUsername = prompt('Select a Username','Type username');
const username = document.querySelector('#player');
username.innerHTML = selectedUsername;
storePlayer(username.innerHTML);


//FUNCIÓN PARA HACER EL FETCH DEL SERVIDOR
async function getData(url){
  const response = await fetch(url);
  if (!response.ok) throw new Error('Invalid server input.');
    const data = await response.json();
    console.log(data.option1.artifact);
    return data.value;}

async function fourOptions(){
    console.log('Retrieving 4 options from server');
    let jsonData;
    const url = 'http://127.0.0.1:5000/fouroptions';
    try {
        jsonData =  await getData(url);
        console.log('fetch done');}
    catch (error){
        console.log(error.message);
    } finally {
         console.log('asynchronous load complete');
         console.log(jsonData);
        return jsonData;
    }
}

async function getTown1(url){
  const response = await fetch(url);
  if (!response.ok) throw new Error('Invalid server input.');
    const data = await response.json();
    console.log(data.option1.town);


    const panel = document.getElementById("option1");
    panel.addEventListener("click", turn1);

    document.getElementsByClassName("town").item(0).innerHTML = data.option1.town ;
    document.getElementById('icon1').setAttribute("src",`img/icons/${data.option1.id}.jpg`);
    document.getElementsByClassName("artefacto").item(0).innerHTML = data.option1.artifact;
    document.getElementsByClassName("rareza").item(0).innerHTML = data.option1.rarity;
    console.log(data.option1.rarity);

    if(data.option1.rarity !== "---") {
        if (data.option1.rarity === "Rare") {
            document.querySelector("#option1").setAttribute("class", "destination rare");
        } else if (data.option1.rarity === "Special") {
            document.querySelector("#option1").setAttribute("class", "destination special");
        } else {
            document.querySelector("#option1").setAttribute("class", "destination common");
        }
    }
    else {
       document.querySelector("#option1").setAttribute("class", "destination none");
    }



    document.getElementsByClassName("descripcion").item(0).innerHTML = data.option1.description;
    document.getElementsByClassName("distance").item(0).innerHTML = data.option1.distance;
    document.getElementsByClassName("fuel").item(0).innerHTML = data.option1.fuel;

    //let pos1 = ["lat": data.option1.lat, "long":data.option1.long];
    const lat1 = data.option1.lat;
    const long1 = data.option1.long;
    document.getElementsByClassName("lat").item(0).innerHTML = lat1;
    document.getElementsByClassName("long").item(0).innerHTML = long1;


    const marker = L.marker([data.option1.lat, data.option1.long], {icon: hielito}).addTo(map);
    marker.bindPopup(data.option1.town);


    const panel2 = document.getElementById("option2");
    panel2.addEventListener("click", turn2);

    document.getElementsByClassName("town").item(1).innerHTML = data.option2.town ;
    document.getElementById('icon2').setAttribute("src",`img/icons/${data.option2.id}.jpg`);
    document.getElementsByClassName("artefacto").item(1).innerHTML = data.option2.artifact;
    document.getElementsByClassName("rareza").item(1).innerHTML = data.option2.rarity;
    console.log(data.option2.rarity);

    if(data.option2.rarity !== "---") {
        if(data.option2.rarity === "Rare"){
            document.querySelector("#option2").setAttribute("class","destination rare");
        }
        else if(data.option2.rarity  === "Special"){
            document.querySelector("#option2").setAttribute("class","destination special");
        }
        else{
            document.querySelector("#option2").setAttribute("class","destination common");
        }
    }
    else {
       document.querySelector("#option2").setAttribute("class", "destination none");
    }

    document.getElementsByClassName("descripcion").item(1).innerHTML = data.option2.description;
    document.getElementsByClassName("distance").item(1).innerHTML = data.option2.distance;
    document.getElementsByClassName("fuel").item(1).innerHTML = data.option2.fuel;

    //let pos2 = ["lat":data.option2.lat, "long":data.option2.long];
    const lat2 = data.option2.lat;
    const long2 = data.option2.long;
    document.getElementsByClassName("lat").item(1).innerHTML = lat2;
    document.getElementsByClassName("long").item(1).innerHTML = long2;

    const marker2 = L.marker([data.option2.lat, data.option2.long], {icon: hielito}).addTo(map);
    marker2.bindPopup(data.option2.town);


    const panel3 = document.getElementById("option3");
    panel3.addEventListener("click", turn3);

    document.getElementsByClassName("town").item(2).innerHTML = data.option3.town ;
    document.getElementById('icon3').setAttribute("src",`img/icons/${data.option3.id}.jpg`);
    document.getElementsByClassName("artefacto").item(2).innerHTML = data.option3.artifact;
    document.getElementsByClassName("rareza").item(2).innerHTML = data.option3.rarity;
    console.log(data.option3.rarity);

    if(data.option3.rarity !== "---") {
        if(data.option3.rarity === "Rare"){
            document.querySelector("#option3").setAttribute("class","destination rare");
        }
        else if(data.option3.rarity  === "Special"){
            document.querySelector("#option3").setAttribute("class","destination special");
        }
        else{
            document.querySelector("#option3").setAttribute("class","destination common");
        }
    }
    else {
       document.querySelector("#option3").setAttribute("class", "destination none");
    }


    document.getElementsByClassName("descripcion").item(2).innerHTML = data.option3.description;
    document.getElementsByClassName("distance").item(2).innerHTML = data.option3.distance;
    document.getElementsByClassName("fuel").item(2).innerHTML = data.option3.fuel;

    //let pos3 = ["lat":data.option3.lat, "long":data.option3.long];
    const lat3 = data.option3.lat;
    const long3 = data.option3.long;
    document.getElementsByClassName("lat").item(2).innerHTML = lat3;
    document.getElementsByClassName("long").item(2).innerHTML = long3;

    const marker3 = L.marker([data.option3.lat, data.option3.long], {icon: hielito}).addTo(map);
    marker3.bindPopup(data.option3.town);


    const panel4 = document.getElementById("option4");
    panel4.addEventListener("click", turn4);


    document.getElementsByClassName("town").item(3).innerHTML = data.option4.town ;
    document.getElementById('icon4').setAttribute("src",`img/icons/${data.option4.id}.jpg`);
    document.getElementsByClassName("artefacto").item(3).innerHTML = data.option4.artifact;
    document.getElementsByClassName("rareza").item(3).innerHTML = data.option4.rarity;
    console.log(data.option4.rarity);

    if(data.option4.rarity !== "---") {
        if(data.option4.rarity === "Rare"){
            document.querySelector("#option4").setAttribute("class","destination rare");
        }
        else if(data.option4.rarity  === "Special"){
            document.querySelector("#option4").setAttribute("class","destination special");
        }
        else{
            document.querySelector("#option4").setAttribute("class","destination common");
        }
    }
    else {
       document.querySelector("#option4").setAttribute("class", "destination none");
    }


    document.getElementsByClassName("descripcion").item(3).innerHTML = data.option4.description;
    document.getElementsByClassName("distance").item(3).innerHTML = data.option4.distance;
    document.getElementsByClassName("fuel").item(3).innerHTML = data.option4.fuel;

    //let pos4 = ["lat":data.option4.lat, "long":data.option4.long];
    const lat4 = data.option4.lat;
    const long4 = data.option4.long;
    document.getElementsByClassName("lat").item(3).innerHTML = lat4;
    document.getElementsByClassName("long").item(3).innerHTML = long4;

    const marker4 = L.marker([data.option4.lat, data.option4.long], {icon: hielito}).addTo(map);
    marker4.bindPopup(data.option4.town);
    }

/*FUNCIONES QUE PASARON A MEJOR VIDA: DEP */


let currentLocation =  document.getElementById('location');
currentLocation.innerHTML = 'Helsinki' ;

async function changeLocation(num){
    let n = num + 1 ;
    let newLocation = document.getElementById(`ciudad${n}`).innerHTML;
    currentLocation.innerHTML = "";
    currentLocation.innerHTML = newLocation;

    document.getElementById("bienv").innerHTML = newLocation;

    consumption(num);

    /*let url = "http://127.0.0.1:5000/movelocation/" + newLocation + "/" + username.innerHTML ;
  const response = await fetch(url);
  if (!response.ok) throw new Error('Invalid server input.');
    const data = await response.json();*/
}

//CHECKEAR LAS GOALS
async function ganador(){
    if (metasAlcanzadas === 3){
        modalwin.setAttribute("class","modal active");
        overlay.setAttribute("class","active");
        scoreboard(1);
    }
    else {
        modalloose.setAttribute("class","modal active");
        overlay.setAttribute("class","active");
        scoreboard(0);

    }
}


let days = 11 ;
async function dayPass(){
    days -= 1;
    document.getElementById('days').innerHTML = days;
    if(days === 0){
        console.log("TIME IS UP 0 DAYS LEFT")
        ganador()
    }
}

async function bienvenida(){
    let url = "http://127.0.0.1:5000/wiki/"+ currentLocation.innerHTML ;
    const response = await fetch(url);
    if (!response.ok) throw new Error('Invalid server input WIKI.');
    const data = await response.json();
    console.log(data)
    document.getElementById("info").innerHTML = data
}
// PUNTAJE OCH BRÄNSLE
let score = document.getElementById("score");
let puntaje = 0;
score.innerHTML = puntaje;

let fuel = document.getElementById("fuel");
let initialfuel = 30000;
fuel.innerHTML = initialfuel;
let fuelleft = initialfuel;

// meter en changelocation functtt
async function consumption(num){
    let n = num;
    let gasto = document.getElementsByClassName("fuel").item(n).innerHTML;
    fuelleft = fuelleft - parseInt(gasto);
    fuel.innerHTML = fuelleft;
}

// CAMBIANDO EL PUNTAJE DEL JUGADOR -- ACTUALIZAR LAS METAS
let metasAlcanzadas = 0;

let targetgoal1 = 3;
let targetgoal2 = 2;
let targetgoal3 = 1;
let goal1 = document.getElementById("goal1");
let goal2 = document.getElementById("goal2");
let goal3 = document.getElementById("goal3");
let meta1 = 0;
let meta2 = 0;
let meta3 = 0;


document.getElementById("targetgoal1").innerHTML = targetgoal1;
document.getElementById("targetgoal2").innerHTML = targetgoal2;
document.getElementById("targetgoal3").innerHTML = targetgoal3;

goal1.innerHTML = meta1;
goal2.innerHTML = meta2;
goal3.innerHTML = meta3;

async function checkmetas(num){
    let n = num;
   let rareza = document.getElementsByClassName("rareza").item(n).innerHTML;
    if(rareza === "Common"){
        puntaje = puntaje + 100;
        score.innerHTML = puntaje;
        if(meta1<targetgoal1) {
            meta1++
            document.getElementsByClassName("meta").item(0).innerHTML = meta1;
            if (meta1 === targetgoal1){
                document.getElementsByClassName("goal").item(0).setAttribute("class","goal completed");
                metasAlcanzadas ++
                console.log(`Metas alcanzadas: ${metasAlcanzadas}`);
            }

        }
        else{
            document.getElementsByClassName("goal").item(0).setAttribute("class","goal completed");
        }
    }
    else if(rareza === "Rare"){
        puntaje = puntaje + 200;
        score.innerHTML = puntaje;
        if(meta2<targetgoal2) {
            meta2++
            document.getElementsByClassName("meta").item(1).innerHTML = meta2;
            if (meta2 === targetgoal2){
                document.getElementsByClassName("goal").item(1).setAttribute("class","goal completed");
                metasAlcanzadas ++
                console.log(`Metas alcanzadas: ${metasAlcanzadas}`);
            }

        }
        else{
            document.getElementsByClassName("goal").item(1).setAttribute("class","goal completed");
        }

    }
    else if (rareza === "Special"){
        puntaje = puntaje + 300;
        score.innerHTML = puntaje;
        if(meta3<targetgoal3) {
            meta3++
            document.getElementsByClassName("meta").item(2).innerHTML = meta3;
            if (meta3=== targetgoal3){
                document.getElementsByClassName("goal").item(2).setAttribute("class","goal completed");
                metasAlcanzadas ++
                console.log(`Metas alcanzadas: ${metasAlcanzadas}`);
            }

        }
        else{
            document.getElementsByClassName("goal").item(2).setAttribute("class","goal completed");
        }
    }
    else{
        console.log("No artifact here. Score stays the same")
        }
}

// SETEANDO EL NUMERO DE CASILLERO DISPONIBLE
let slot = 0;
async function collect(slotnum, src,num){
    let slot = document.getElementsByClassName("artifact").item(slotnum);
    slot.setAttribute("src",src);
    let townname = document.getElementsByClassName("town").item(num);
    let url = "http://127.0.0.1:5000/remove/"+ townname.innerHTML ;
    const response = await fetch(url);
    if (!response.ok) throw new Error('Invalid server input WIKI.');

}

async function remove(town){

}

async function coleccionar(num){
    let n = num
   let artifact = document.getElementsByClassName("artefacto").item(n).innerHTML;
    if (artifact !== "None"){
        let source = document.getElementsByClassName("responsive-img").item(n).src;
        collect(slot, source,n);
        slot++;
    }
}

// FUNCIÓN PARA ENVIAR SCOREBOARD -- CLASS
async function scoreboard(num){
    let n = num;
    if (n == 0){
        let object = {"score":score.innerHTML, "status":"LOSER", "goals": metasAlcanzadas, "location": currentLocation.innerHTML}
        let json = JSON.stringify(object)
        console.log(json)
        let url = "http://127.0.0.1:5000/scoreboard/" + json;
        const response = await fetch(url);
        if (!response.ok) throw new Error('Invalid server input.');
    }

    else {
        let object = {"score":score.innerHTML, "status":"WINNER", "goals": metasAlcanzadas, "location": currentLocation.innerHTML}
        let json = JSON.stringify(object)
        console.log(json)
        let url = "http://127.0.0.1:5000/scoreboard/" + json;
        const response = await fetch(url);
        if (!response.ok) throw new Error('Invalid server input.');
    }
}



async  function turn(n) {
    changeLocation(n);
    bienvenida()
    dayPass();
    const url = 'http://127.0.0.1:5000/fouroptions';
    getTown1(url);

}

async  function turn1() {
    let n = 0 ;
    checkmetas(n);
    coleccionar(n);

    changeLocation(n);
    bienvenida();
    dayPass();
    //checkdays();
    /*
    let lat = document.getElementsByClassName("lat").item(n);
    let long = document.getElementsByClassName("long").item(n);
     */
    const url = 'http://127.0.0.1:5000/fouroptions';
    getTown1(url);
}
async  function turn2() {
    let n = 1 ;
    checkmetas(n);
    coleccionar(n);
    changeLocation(n);
    bienvenida()
    dayPass();

    const url = 'http://127.0.0.1:5000/fouroptions';
    getTown1(url);

}
async  function turn3() {
    let n = 2 ;
    checkmetas(n);
    coleccionar(n);
    changeLocation(n);
    bienvenida()
    dayPass();

    const url = 'http://127.0.0.1:5000/fouroptions';
    getTown1(url);

}
async  function turn4() {
    let n = 3 ;
    checkmetas(n);
    coleccionar(n);
    changeLocation(n);
    bienvenida()
    dayPass();

    const url = 'http://127.0.0.1:5000/fouroptions';
    getTown1(url);
}


turn();



