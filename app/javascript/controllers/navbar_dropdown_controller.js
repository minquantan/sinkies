// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]

  connect() {
    // this.outputTarget.textContent = 'Hello, Stimulus!'
    console.log("navbar dropdown ready")
  }

  greet() {
    console.log("greet me fool");
    console.log(this.element);
    let dropdown = document.querySelector(".dropdown-menu");
    dropdown.classList.toggle("open");
    console.log(dropdown);
    let toggleBtn = document.querySelector(".toggle-btn i")

    if (dropdown.classList.contains("open")) {
      toggleBtn.classList = "fa-solid fa-xmark";
    } else {
      toggleBtn.classList = "fa-solid fa-bars";
    }

  }
}
