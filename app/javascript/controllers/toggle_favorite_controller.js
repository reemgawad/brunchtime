import { Controller } from "stimulus"


export default class extends Controller {
    static targets = ["output", "svgPath"]

    connect() {}

    toggle(event) {
        this.svgPathTarget.classList.toggle('liked')
    }
}
