'use strict';

/* MAP FROM LEAFLET QUICK GUIDE :) */
//var map = L.map('map').setView([60.1699,24.9384], 6);
var map = L.map('map').setView([65.0511, 27.0576], 5);

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

const selectedUsername = prompt('Select a Username','Type username');
const username = document.querySelector('#player');
username.innerHTML = selectedUsername;



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
    panel.addEventListener("click", turn);
    //panel.querySelector('#ciudaduno').innerHTML = data.option1.town;
    document.getElementsByClassName("town").item(0).innerHTML = data.option1.town ;
    document.getElementById('icon1').setAttribute("src","img/icons/204.jpg");
    document.getElementsByClassName("artefacto").item(0).innerHTML = data.option1.artifact;
    document.getElementsByClassName("rareza").item(0).innerHTML = data.option1.rarity;
    document.getElementsByClassName("descripcion").item(0).innerHTML = data.option1.description;
    const marker = L.marker([data.option1.lat, data.option1.long]).addTo(map);
    marker.bindPopup(data.option1.town);
    }
async function getTown2(url){
const response = await fetch(url);
if (!response.ok) throw new Error('Invalid server input.');
const data = await response.json();
console.log(data.option2.town);
const panel = document.getElementById("option2");
panel.addEventListener("click", turn);
//panel.querySelector('#ciudaduno').innerHTML = data.option1.town;
document.getElementsByClassName("town").item(1).innerHTML = data.option2.town ;
document.getElementById('icon1').setAttribute("src","img/icons/204.jpg");
document.getElementsByClassName("artefacto").item(1).innerHTML = data.option2.artifact;
document.getElementsByClassName("rareza").item(1).innerHTML = data.option2.rarity;
document.getElementsByClassName("descripcion").item(1).innerHTML = data.option2.description;
const marker = L.marker([data.option2.lat, data.option2.long]).addTo(map);
marker.bindPopup(data.option2.town);
}
async function getTown3(url){
const response = await fetch(url);
if (!response.ok) throw new Error('Invalid server input.');
const data = await response.json();
console.log(data.option2.town);
const panel = document.getElementById("option3");
panel.addEventListener("click", turn);
//panel.querySelector('#ciudaduno').innerHTML = data.option1.town;
document.getElementsByClassName("town").item(2).innerHTML = data.option3.town ;
document.getElementById('icon1').setAttribute("src","img/icons/204.jpg");
document.getElementsByClassName("artefacto").item(2).innerHTML = data.option3.artifact;
document.getElementsByClassName("rareza").item(2).innerHTML = data.option3.rarity;
document.getElementsByClassName("descripcion").item(2).innerHTML = data.option3.description;
const marker = L.marker([data.option3.lat, data.option3.long]).addTo(map);
marker.bindPopup(data.option3.town);
}
async function getTown4(url){
  const response = await fetch(url);
  if (!response.ok) throw new Error('Invalid server input.');
    const data = await response.json();
    console.log(data.option2.town);
    const panel = document.getElementById("option4");
    panel.addEventListener("click", turn);
    //panel.querySelector('#ciudaduno').innerHTML = data.option1.town;
    document.getElementsByClassName("town").item(3).innerHTML = data.option4.town ;
    document.getElementById('icon1').setAttribute("src","img/icons/204.jpg");
    document.getElementsByClassName("artefacto").item(3).innerHTML = data.option4.artifact;
    document.getElementsByClassName("rareza").item(3).innerHTML = data.option4.rarity;
    document.getElementsByClassName("descripcion").item(3).innerHTML = data.option4.description;
    const marker = L.marker([data.option4.lat, data.option4.long]).addTo(map);
    marker.bindPopup(data.option4.town);
    }



async function changeLocation(newLocation){
    let currentLocation = "";
    currentLocation = newLocation;
}

var days = 20 ;
async function dayPass(){
    days -= 1;
    document.getElementById('days').innerHTML = days;
}
async  function turn() {
   dayPass();
    const url = 'http://127.0.0.1:5000/fouroptions';
    //const response = await fetch(url);
    //const data = await response.json();
    getTown1(url);
    getTown2(url);
    getTown3(url);
    getTown4(url);
    L.map('map').setView([65.0121, 25.4651], 10)
}

//let currentLocation = {"location":"Helsinki","lat":60.1699, "long":24.9384};
document.getElementById('location').innerHTML = 'Helsinki';

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

