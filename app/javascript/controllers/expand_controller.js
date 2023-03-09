import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    // this.outputTarget.textContent = 'Hello, Stimulus!'
    console.log("the expansion begins now");
  }

  popout () {
    const menuItemsContainer = document.getElementsByClassName("menu-items-container");
    const menuCardContainer = document.getElementsByClassName("menu-card-container");

    console.log(this.element.innerHTML);

  }
}
