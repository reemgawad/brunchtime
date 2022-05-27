import { Controller } from "stimulus"

export default class extends Controller {
    static targets = ["form", "restaurantsList", "searchInput", "time", "mapRefresh"]

    connect() {
      console.log(this.mapRefreshTarget);
    }
    update() {
      const url = `${this.formTarget.action}?location=${this.searchInputTarget.value}&wait_time=${this.timeTarget.value}`
      fetch(url, { headers: { 'Accept': 'application/json' } })
      .then(response => response.JSON)
      .then((data) => {
        console.log(data);
        this.restaurantsListTarget.innerHTML = data;
      })
    }

    // updateWait(){
    //   console.log("hello");
    //   console.log(this.timeTarget.value);
    // }
}
