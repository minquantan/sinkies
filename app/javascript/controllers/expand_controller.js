import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    // this.outputTarget.textContent = 'Hello, Stimulus!'
    console.log("the expansion begins now");
  }

  popout () {
    // get the name
    const selectedName = this.element.querySelector('h3').innerText;
    console.log(selectedName);


  }
}
