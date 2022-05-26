import { Controller } from "stimulus"
// import 'bootstrap/js/dist/modal'

export default class extends Controller {
  static targets = ["myModal", "noButton"]

  connect() {
    console.log(this.myModalTarget)
    console.log(this.noButtonTarget)
    setTimeout(() => {
      this.myModalTarget.click()
    }, 7000)
  }
}
