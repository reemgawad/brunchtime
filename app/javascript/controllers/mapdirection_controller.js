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
      center: [this.markerValue.lng, this.markerValue.lat],
      style: "mapbox://styles/mapbox/streets-v10"
    })
    this.#addMarkersToMap()
    // this.#fitMapToMarkers()
    this.#getCurrentPosition()
  }

  #addMarkersToMap() {

      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('${this.markerValue.image_url}')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "25px"
      customMarker.style.height = "25px"

      new mapboxgl.Marker(customMarker)
        .setLngLat([ this.markerValue.lng, this.markerValue.lat ])
        .addTo(this.map)
    };

  #fitMapToMarkers() {
    // const bounds = new mapboxgl.LngLatBounds()
    const bounds = [
      [-73.556782, 45.562825],
      [-73.597992, 45.480620]
    ];
    this.map.setMaxBounds(bounds);
    // bounds.extend([ this.markerValue.lng, this.markerValue.lat ])
    // this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  #getCurrentPosition(){
    navigator.geolocation.getCurrentPosition((data)=>this.#getRoute(data))
    }

 #getRoute(data){
  console.log(data)
  console.log(data.coords.longitude)
  console.log(data.coords.latitude)
  fetch(`https://api.mapbox.com/directions/v5/mapbox/walking/${data.coords.longitude},${data.coords.latitude};${this.markerValue.lng},${this.markerValue.lat}?steps=true&geometries=geojson&access_token=${this.apiKeyValue}`)
  .then(response => response.json())
      .then(data => console.log(data))
 }


}
