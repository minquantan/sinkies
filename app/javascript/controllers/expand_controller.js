import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    // this.outputTarget.textContent = 'Hello, Stimulus!'
    console.log("the expansion begins now");
  }

  expandModal() {
    console.log(this.element)

    // Get all of the picture urls
    const images = this.element.querySelectorAll("img");
    const img1 = images[0].currentSrc;
    const img2 = images[1].currentSrc;
    const img3 = images[2].currentSrc;
    const img4 = images[3].currentSrc;

    // Get the Name, Price, Description, and Advice
    const dishName = this.element.querySelector("h3").innerText;
    const dishPrice = this.element.querySelector("h4").innerText;
    const dishWriting = this.element.querySelectorAll("p")
    const dishDescription = dishWriting[0].innerText;
    const dishAdvice = dishWriting[1].innerText;
  }
}
