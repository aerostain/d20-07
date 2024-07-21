console.log("Hi, Godzilla. This is my new map");

var map = L.map("map").setView([-12.07, -77.07], 13);

L.tileLayer("https://tile.openstreetmap.org/{z}/{x}/{y}.png", {
  maxZoom: 19,
  attribution:
    '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
}).addTo(map);

var marker = L.marker([-12.07, -77.07]).addTo(map);

marker.bindPopup("Hi, Godzilla");

var popup = L.popup();

function onMapClick(e) {
  popup
    .setLatLng(e.latlng)
    .setContent("You clicked the map at " + e.latlng.toString())
    .openOn(map);
}

map.on("click", onMapClick);

//Creando grupos
var littleton = L.marker([-12.059, -77.046]).bindPopup("Breña"),
  denver = L.marker([-12.083, -77.03]).bindPopup("Lince"),
  aurora = L.marker([-12.108, -77.0]).bindPopup("San Borja");

var cities = L.layerGroup([littleton, denver, aurora]);

var overlayMaps = {
  "Cities": cities
};

var layerControl = L.control.layers(overlayMaps).addTo(map);
