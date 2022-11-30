'use strict';

/* MAP FROM LEAFLET QUICK GUIDE :) */
var map = L.map('map').setView([60.1699,24.9384], 12);
L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

const selectedUsername = prompt('Select a Username','Type username');
const username = document.querySelector('#player');
username.innerHTML = selectedUsername;

const currentLocation = document.querySelector('#location');

async function fourOptions(){
    console.log('Retrieving 4 options from server');
    /*Access-Control-Allow-Origin: 'http://localhost:63342'*/
    let jsonData;
    const url = 'http://127.0.0.1:5000/fouroptions';
    try {
        const response =  await fetch(url);
        jsonData =  await response.json();
        //document.getElementById('artifact-name2').innerText = jsonData['option2']['name'];
        console.log('fetch dones');}
    catch (error){
        console.log(error.message);
    } finally {
        console.log(response['option1'])
         console.log('asynchronous load complete');
    return jsonData.option2;
    }
}

const fourOption = fourOptions()
document.getElementById('town2-name').innerText = fourOption.town ;//fourOption['option2']['name'];

