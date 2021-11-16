import L from "leaflet";
import "leaflet/dist/leaflet.css";
import "leaflet-defaulticon-compatibility/dist/leaflet-defaulticon-compatibility.webpack.css";
import "leaflet-defaulticon-compatibility";

document.addEventListener("turbolinks:load", () => {
    const mapElement = document.querySelector("#map");
    if (mapElement) {
        const map = L.map(mapElement, {crs: L.CRS.Simple, minZoom: -5});
        const height = parseInt(mapElement.dataset.mapHeight)
        const width = parseInt(mapElement.dataset.mapWidth)
        console.log(mapElement.dataset)
        const bounds = [
          [
            [0, 0],
            [height, width],
          ],
        ];
        const image = L.imageOverlay(mapElement.dataset.mapUrl, bounds).addTo(map);   
        map.fitBounds(bounds);
        map.setView([height / 2, width / 2])
        

        // L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
        //   attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
        //   maxZoom: 18,
        // }).addTo(map);

        // var marker = L.marker([latitude, longitude]).addTo(map);

        
    }
})
