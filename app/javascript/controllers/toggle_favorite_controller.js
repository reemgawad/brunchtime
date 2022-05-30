import { Controller } from "stimulus"


export default class extends Controller {
    static targets = ["output", "svgPath", "svgPath2"]

    connect() {}

    toggle(event) {
        this.svgPathTarget.classList.toggle('liked')
        this.svgPath2Target.classList.toggle('liked')
    }
}
