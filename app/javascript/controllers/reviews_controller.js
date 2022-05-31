import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["reviewsList"]

    dropdown() {
        console.log(this.reviewsListTarget.innerHTML)
        this.reviewsListTarget.classList.toggle('d-none')
    }
    connect() {
        // console.log("Hi")
    }
}