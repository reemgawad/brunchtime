import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    // console.log("connected")
    setTimeout(() => alert('Hello'), 5000)
  }

  // function popup {
  //   let modalToggle = document.getElementById('staticBackdrop') // relatedTarget
  //   myModal.show(modalToggle)
  // }
}
