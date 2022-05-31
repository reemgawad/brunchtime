import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["form", "restaurantsList", "searchInput", "time", "mapRefresh"]

  connect() {}

  update() {
    const url = `${this.formTarget.action}?location=${this.searchInputTarget.value}&wait_time=${this.timeTarget.value}`
    fetch(url, { headers: { 'Accept': 'application/json' } })
    .then(response => response.json())
    .then((data) => {
      // Update the restaurants list with the search results.
      this.restaurantsListTarget.innerHTML = data.restaurants;
      // Inject the updated markers list into the map's DOM in place of the initial one.
      this.mapRefreshTarget.dataset.mapboxMarkersValue = data.markers;
      // Dispatch an event that will trigger the map refresh in mapbox_controller.js
      this.dispatch('refreshMap', {
        target: this.mapRefreshTarget
      })
      // this.timeTarget.blur()
    })
  }
}
