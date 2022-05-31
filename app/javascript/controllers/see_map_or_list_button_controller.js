import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["map", "list"]

  connect() {}

  show(event) {
    this.mapTarget.classList.toggle("d-none")
    this.listTarget.classList.toggle("d-none")
    console.log(event.target.innerHTML);
    if (event.target.innerHTML == 'See Map <i class="far fa-map"></i>') {
      event.target.innerHTML = "See List"
    } else if (event.target.innerText == "See List") {
      event.target.innerText = "See Map"
    }

  }
}
