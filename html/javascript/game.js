'use strict';

/* MAP FROM LEAFLET QUICK GUIDE :) */
//var map = L.map('map').setView([60.1699,24.9384], 6);
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

async function storePlayer(name){
   let url = "http://127.0.0.1:5000/username/" + name ;
  const response = await fetch(url);
  if (!response.ok) throw new Error('Invalid server input.');
    const data = await response.json();
    return console.log("USERNAME STORED IN DATABASE");
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
    //panel.addEventListener("click", turn);
    /*panel.addEventListener("click", () => {
        turn(0)
    });*/

    document.getElementsByClassName("town").item(0).innerHTML = data.option1.town ;
    document.getElementById('icon1').setAttribute("src",`img/icons/${data.option1.id}.jpg`);
    document.getElementsByClassName("artefacto").item(0).innerHTML = data.option1.artifact;
    document.getElementsByClassName("rareza").item(0).innerHTML = data.option1.rarity;
    console.log(data.option1.rarity);
    if(data.option1.rarity === "Rare"){
        document.querySelector("#option1").setAttribute("class","destination rare");
    }
    else if(data.option1.rarity  === "Special"){
        document.querySelector("#option1").setAttribute("class","destination special");
    }
    else{
        document.querySelector("#option1").setAttribute("class","destination common");
    }
    document.getElementsByClassName("descripcion").item(0).innerHTML = data.option1.description;
    //document.getElementsByClassName("distance").item(0).innerHTML = data.option1.distance;
    const marker = L.marker([data.option1.lat, data.option1.long], {icon: hielito}).addTo(map);
    marker.bindPopup(data.option1.town);


    const panel2 = document.getElementById("option2");
    panel2.addEventListener("click", turn2);
    /*panel2.addEventListener("click", () => {
        turn(1)
    }); */
    document.getElementsByClassName("town").item(1).innerHTML = data.option2.town ;
    document.getElementById('icon2').setAttribute("src",`img/icons/${data.option2.id}.jpg`);
    document.getElementsByClassName("artefacto").item(1).innerHTML = data.option2.artifact;
    document.getElementsByClassName("rareza").item(1).innerHTML = data.option2.rarity;
    console.log(data.option2.rarity);
    if(data.option2.rarity === "Rare"){
        document.querySelector("#option2").setAttribute("class","destination rare");
    }
    else if(data.option2.rarity  === "Special"){
        document.querySelector("#option2").setAttribute("class","destination special");
    }
    else{
        document.querySelector("#option2").setAttribute("class","destination common");
    }
    document.getElementsByClassName("descripcion").item(1).innerHTML = data.option2.description;
    //document.getElementsByClassName("distance").item(1).innerHTML = data.option2.distance;
    let pos2 = {"lat":data.option2.lat, "long":data.option2.long};
    const marker2 = L.marker([data.option2.lat, data.option2.long], {icon: hielito}).addTo(map);
    marker2.bindPopup(data.option2.town);


    const panel3 = document.getElementById("option3");
    panel3.addEventListener("click", turn3);
    //panel3.addEventListener("click", turn);
    /*panel3.addEventListener("click", () => {
        turn(2)
    });*/

    document.getElementsByClassName("town").item(2).innerHTML = data.option3.town ;
    document.getElementById('icon3').setAttribute("src",`img/icons/${data.option3.id}.jpg`);
    document.getElementsByClassName("artefacto").item(2).innerHTML = data.option3.artifact;
    document.getElementsByClassName("rareza").item(2).innerHTML = data.option3.rarity;
    console.log(data.option3.rarity);
    if(data.option3.rarity === "Rare"){
        document.querySelector("#option3").setAttribute("class","destination rare");
    }
    else if(data.option3.rarity  === "Special"){
        document.querySelector("#option3").setAttribute("class","destination special");
    }
    else{
        document.querySelector("#option3").setAttribute("class","destination common");
    }
    document.getElementsByClassName("descripcion").item(2).innerHTML = data.option3.description;
    //document.getElementsByClassName("distance").item(2).innerHTML = data.option3.distance;
    let pos3 = {"lat":data.option3.lat, "long":data.option3.long};
    const marker3 = L.marker([data.option3.lat, data.option3.long], {icon: hielito}).addTo(map);
    marker3.bindPopup(data.option3.town);


    const panel4 = document.getElementById("option4");
    panel4.addEventListener("click", turn4);
    //panel4.addEventListener("click", turn);


    document.getElementsByClassName("town").item(3).innerHTML = data.option4.town ;
    document.getElementById('icon4').setAttribute("src",`img/icons/${data.option4.id}.jpg`);
    document.getElementsByClassName("artefacto").item(3).innerHTML = data.option4.artifact;
    document.getElementsByClassName("rareza").item(3).innerHTML = data.option4.rarity;
    console.log(data.option4.rarity);
    if(data.option4.rarity === "Rare"){
        document.querySelector("#option4").setAttribute("class","destination rare");
    }
    else if(data.option4.rarity  === "Special"){
        document.querySelector("#option4").setAttribute("class","destination special");
    }
    else{
        document.querySelector("#option4").setAttribute("class","destination common");
    }
    document.getElementsByClassName("descripcion").item(3).innerHTML = data.option4.description;
    //document.getElementsByClassName("distance").item(3).innerHTML = data.option4.distance;
    let pos4 = {"lat":data.option4.lat, "long":data.option4.long};
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

    document.getElementById("bienv").innerHTML = newLocation

    /*let url = "http://127.0.0.1:5000/movelocation/" + newLocation + "/" + username.innerHTML ;
  const response = await fetch(url);
  if (!response.ok) throw new Error('Invalid server input.');
    const data = await response.json();*/
}

let days = 16 ;
async function dayPass(){
    days -= 1;
    document.getElementById('days').innerHTML = days;
}

async function bienvenida(){
    let url = "http://127.0.0.1:5000/wiki/"+ currentLocation.innerHTML ;
    const response = await fetch(url);
    if (!response.ok) throw new Error('Invalid server input WIKI.');
    const data = await response.json();
    console.log(data)
    document.getElementById("info").innerHTML = data
}
// PUNTAJE
let score = document.getElementById("score");
let puntaje = 0;
score.innerHTML = puntaje;

// CAMBIANDO EL PUNTAJE DEL JUGADOR -- ACTUALIZAR LAS METAS
let targetgoal1 = 3
let targetgoal2 = 2
let targetgoal3 = 1
let goal1 = document.getElementById("goal1");
let goal2 = document.getElementById("goal2");
let goal3 = document.getElementById("goal3");
let meta1 = 0
let meta2 = 0
let meta3 = 0


document.getElementById("targetgoal1").innerHTML = targetgoal1;
document.getElementById("targetgoal2").innerHTML = targetgoal2;
document.getElementById("targetgoal3").innerHTML = targetgoal3;

goal1.innerHTML = meta1;
goal2.innerHTML = meta2;
goal3.innerHTML = meta3;

async function checkmetas(num){
    let n = num
   let rareza = document.getElementsByClassName("rareza").item(n).innerHTML;
    if(rareza === "Common"){
        puntaje = puntaje + 100;
        score.innerHTML = puntaje;
        if(meta1<targetgoal1) {
            meta1++
            document.getElementsByClassName("meta").item(0).innerHTML = meta1;

        }
    }
    else if(rareza === "Rare"){
        puntaje = puntaje + 200;
        score.innerHTML = puntaje;
        if(meta2<targetgoal2) {
            meta2++
            document.getElementsByClassName("meta").item(1).innerHTML = meta2;

        }

    }
    else{
        puntaje = puntaje + 300;
        score.innerHTML = puntaje;
        if(meta3<targetgoal3) {
            meta3++
            document.getElementsByClassName("meta").item(2).innerHTML = meta3;

        }
    }
}

// SETEANDO EL NUMERO DE CASILLERO DISPONIBLE
let slot = 0;
async function collect(slotnum, src){
    let slot = document.getElementsByClassName("artifact").item(slotnum);
    slot.setAttribute("src",src);
}

async function remove(town){

}

async function coleccionar(num){
    let n = num
   let artifact = document.getElementsByClassName("artefacto").item(n).innerHTML;
    if (artifact !== "None"){
        let source = document.getElementsByClassName("responsive-img").item(n).src;
        collect(slot, source);
        slot++;
        document.getElementsByClassName("responsive-img").item(n).setAttribute("src", "img/otros/vacio.png")
    }
}

async  function turn(n) {
    changeLocation(n);
    bienvenida()
    dayPass();
    const url = 'http://127.0.0.1:5000/fouroptions';
    getTown1(url);
    /*L.map('map').setView([65.0121, 25.4651], 10)*/
}

async  function turn1() {
    let n = 0 ;
    checkmetas(n);
    coleccionar(n);

    changeLocation(n);
    bienvenida();
    dayPass();
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
    /*L.map('map').setView([65.0121, 25.4651], 10)*/
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
    /*L.map('map').setView([65.0121, 25.4651], 10)*/
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
    /*L.map('map').setView([65.0121, 25.4651], 10)*/
}


//let currentLocation = {"location":"Helsinki","lat":60.1699, "long":24.9384};
// document.getElementById('location').innerHTML = 'Helsinki';


turn();


//let selection = getData(url);
//document.querySelector('#ciudaduno').innerText = selection.;
//let selection = fourOptions();
//document.querySelector('#ciudaduno').innerText = selection;

/*const opciones = fourOptions();
console.log('opciones logueada');
console.log(opciones);
const ciudaduno = document.querySelector('#ciudaduno').innerText;
console.log(ciudaduno);*/
//ciudaduno = opciones.option1.town ;

