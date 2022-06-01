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
    this.#getCurrentPosition()
  }

  #addMarkersToMap() {

      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('${this.markerValue.image_url}')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "40px"
      customMarker.style.height = "40px"

      new mapboxgl.Marker(customMarker)
        .setLngLat([ this.markerValue.lng, this.markerValue.lat ])
        .addTo(this.map)
    };

  #fitMapToMarkers(currentPosition) {
    const bounds = new mapboxgl.LngLatBounds()

    bounds.extend([ this.markerValue.lng, this.markerValue.lat ])
    bounds.extend([ currentPosition.coords.longitude, currentPosition.coords.latitude ])

    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  #getCurrentPosition(){
    navigator.geolocation.getCurrentPosition((data) => {
      this.#fitMapToMarkers(data)
      this.#getRoute(data)
    })
  }

 #getRoute(data){
  // console.log(data.coords)
  const start = [data.coords.longitude, data.coords.latitude];
  // console.log(start)
  // console.log(data.coords.longitude)
  // console.log(data.coords.latitude)
  fetch(`https://api.mapbox.com/directions/v5/mapbox/walking/${data.coords.longitude},${data.coords.latitude};${this.markerValue.lng},${this.markerValue.lat}?steps=true&geometries=geojson&access_token=${this.apiKeyValue}`)
    .then(response => response.json())
    .then((data) => {
      const route = data.routes[0].geometry.coordinates
      const geojson = {
        type: 'Feature',
        properties: {},
        geometry: {
          type: 'LineString',
          coordinates: route
        }
      }
      // console.log(geojson)
      this.map.addLayer({
        id: 'route',
        type: 'line',
        source: {
          type: 'geojson',
          data: geojson
        },
        layout: {
          'line-join': 'round',
          'line-cap': 'round'
        },
        paint: {
          'line-color': '#58370E',
          'line-width': 3,
          'line-opacity': 0.75
        }
      });



      this.map.addLayer({
        id: 'point',
        type: 'circle',
        source: {
          type: 'geojson',
          data: {
            type: 'FeatureCollection',
            features: [
              {
                type: 'Feature',
                properties: {},
                geometry: {
                  type: 'Point',
                  coordinates: start
                }
              }
            ]
          }
        },
        paint: {
          'circle-radius': 7,
          'circle-color': '#58370E'
        }
      });

    })
 }


}
