import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Object
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
    // this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  // #addMarkersToMap() {

  //     const customMarker = document.createElement("div")
  //     customMarker.className = "marker"
  //     customMarker.style.backgroundImage = `url('${this.markerValue.image_url}')`
  //     customMarker.style.backgroundSize = "contain"
  //     customMarker.style.width = "25px"
  //     customMarker.style.height = "25px"

  //     new mapboxgl.Marker(customMarker)
  //       .setLngLat([ this.markerValue.lng, this.markerValue.lat ])
  //       .addTo(this.map)
  //   };

  #fitMapToMarkers() {
    // const bounds = new mapboxgl.LngLatBounds()
    const bounds = [
      [-123.069003, 45.395273],
      [-122.303707, 45.612333]
    ];
    map.setMaxBounds(bounds);
    // bounds.extend([ this.markerValue.lng, this.markerValue.lat ])
    // this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  // #getRoute () {
  //   fetch(`https://api.mapbox.com/directions/v5/mapbox/walking/${start[0]},${start[1]};${end[0]},${end[1]}?steps=true&geometries=geojson&access_token=${mapboxgl.accessToken}`, {
  //     method: "POST",
  //     headers: { "Accept": "application/json", "X-CSRF-Token": csrfToken() },
  //     body: new FormData(this.formTarget)
  //   })
  //     .then(response => response.json())
  //     .then((data) => {
  //       if (data.inserted_item) {
  //         this.itemsTarget.insertAdjacentHTML("beforeend", data.inserted_item)
  //       }
  //       thi
  // }
}
