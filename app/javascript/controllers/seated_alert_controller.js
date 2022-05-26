import { Controller } from "stimulus"
// import 'bootstrap/js/dist/modal'

export default class extends Controller {
  static targets = ["myModal"]

  connect() {
    console.log(this.myModalTarget)
    setTimeout(() => {
      this.myModalTarget.click()
    }, 5000)
  }
}
