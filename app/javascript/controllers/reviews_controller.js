import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["reviewsList"]

      dropdown() {
          // console.log(this.reviewsListTarget.innerHTML)
          this.reviewsListTarget.classList.toggle('d-none')
      }
      connect() {
        // console.log("Hi")
      }
      show(event) {
        console.log(event.target.innerText)
        if (event.target.innerText == "See Reviews") {
          event.target.innerText = "Hide Reviews"
        } else if (event.target.innerText == "Hide Reviews") {
          event.target.innerText = "See Reviews"
        }
      }
    }
