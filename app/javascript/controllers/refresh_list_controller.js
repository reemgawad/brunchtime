import { Controller } from "stimulus"

export default class extends Controller {
    static targets = ["form", "restaurantsList", "searchInput", "time"]

    connect() {
    }
    update() {
      const url = `${this.formTarget.action}?location=${this.searchInputTarget.value}&wait_time=${this.timeTarget.value}`
      fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        this.restaurantsListTarget.innerHTML = data;
      })
    }

    // updateWait(){
    //   console.log("hello");
    //   console.log(this.timeTarget.value);
    // }
}
