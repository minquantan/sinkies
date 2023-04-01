import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    console.log('google is the best');
    // Initialize and add the map
    let map;

    async function initMap() {
      // The location of Uluru
      const position = { lat: 1.376, lng: 103.946 };
      // Request needed libraries.
      //@ts-ignore
      const { Map } = await google.maps.importLibrary("maps");
      // const { AdvancedMarkerView } = await google.maps.importLibrary("marker");

      // The map, centered at Uluru
      map = new Map(document.getElementById("map"), {
        zoom: 18,
        center: position,
        mapId: "DEMO_MAP_ID",
      });

      // The marker, positioned at Uluru
      new google.maps.Marker({
        position: position,
        map,
        title: "500 Pasir Ris Street 52",
      });

    }

    initMap();
  }
}
