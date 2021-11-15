import L from "leaflet";


document.addEventListener("turbolinks:load", () => {
    const mapElement = document.querySelector("#map");
    if (mapElement) {
        const map = L.map(mapElement).setView([51.505, -0.09], 13);

        const bounds = [
            [
              [-26.5, -25],
              [1021.5, 1023],
            ],
          ];
        const image = L.imageOverlay(mapElement.dataset.mapUrl, bounds).addTo(map);   
        console.log(mapElement.dataset.mapUrl);
    }
    else {
        console.log("No Maps!");
    }
})

// const map = L.map("map", {
//     crs: L.CRS.Simple,
//   });
//   const bounds = [
//     [
//       [-26.5, -25],
//       [1021.5, 1023],
//     ],
//   ];
//   const image = L.imageOverlay(mapImage, bounds).addTo(map);
//   map.fitBounds(bounds);

//   fetch("/locations")
//     .then((r) => r.json())
//     .then((locations) => {
//       locations.forEach((location) => {
//         const coord = L.latLng([location.x, location.y]);
//         const marker = L.marker(coord, { title: location.title });
//         marker.location = location;
//         marker.addTo(map);
//         marker.on("click", handleClick);
//       });
//     });