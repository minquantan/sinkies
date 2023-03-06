import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    // this.outputTarget.textContent = 'Hello, Stimulus!'
    console.log("work you retarded git")
  }

  goToSection () {
    console.log(this.element);
  }
}
