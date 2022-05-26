import { Controller } from "stimulus"

export default class extends Controller {
    static targets = ["output"]

    connect() {}

    toggle(event) {
        event.target.classList.toggle('text-danger')
    }
}