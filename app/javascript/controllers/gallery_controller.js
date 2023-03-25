import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    console.log("let's try to pop out these gallery images")
  }

  popout() {
    const name = this.element.querySelectorAll("p")[0].innerText;
    const description = this.element.querySelectorAll("p")[1].innerText;
    const image = this.element.querySelector("img");

    const modal = document.getElementById("gallery-modal");
    console.log(modal);
  }
}
