import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["thankAlert"]

  connect() {
    // console.log("connected");
    // console.log(this.thankAlertTarget)
    setTimeout(() => {
      this.thankAlertTarget.click()
    }, 1000)
  }
}
