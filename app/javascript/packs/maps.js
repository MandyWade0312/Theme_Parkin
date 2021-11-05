import L from "leaflet";


const map = L.map('map').setView([51.505, -0.09], 13);

const image = L.imageOverlay(mapImage, bounds).addTo(map);