import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["map", "list"]

  connect() {
    console.log("Hello from our first Stimulus controller youpi");
  }

  show(event) {
    this.mapTarget.classList.toggle("d-none")
    this.listTarget.classList.toggle("d-none")
    console.log("pas event")
    if (event.target.innerText == "See Map") {
      event.target.innerText = "See List"
    } else if (event.target.innerText == "See List") {
      event.target.innerText = "See Map"
    }

  }
}
