import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    // this.outputTarget.textContent = 'Hello, Stimulus!'
    // console.log("the expansion begins now");
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

    // Get the place to insert modal details
    const insertHere = document.getElementById("menu-item-modal");

    // Set html to be inserted
    const toInsertRaw =
        `
        <div id = "big-card-frame">
          <div id = "heading-holder">
            <div class = "thumbnail-holder navigation-button">
              <div class="thumbnail-image dot active first-dot" data-controller="modal-slideshow" data-action="click->modal-slideshow#changeImage"><img src="${img1}" alt=""></div>
              <div class="thumbnail-image dot second-dot" data-controller="modal-slideshow" data-action="click->modal-slideshow#changeImage"><img src="${img2}" alt=""></div>
              <div class="thumbnail-image dot third-dot" data-controller="modal-slideshow" data-action="click->modal-slideshow#changeImage"><img src="${img3}" alt=""></div>
              <div class="thumbnail-image dot fourth-dot" data-controller="modal-slideshow" data-action="click->modal-slideshow#changeImage"><img src="${img4}" alt=""></div>
            </div>
            <div id = "big-name-price">
              <h3>${dishName}</h3>
              <h3>${dishPrice}</h3>
            </div>
          </div>
          <div id = "content-holder">
            <div id="big-card-main-image">
              <div class = "shadow slider">
                <img src="${img1}" alt="">
                <img src="${img2}" alt="">
                <img src="${img3}" alt="">
                <img src="${img4}" alt="">
              </div>
            </div>
            <div id = "big-card-details">
              <div>
                <p>${dishDescription}</p>
              </div>
              <div>
                <p>${dishAdvice}</p>
              </div>
              <div id = "back-invitation">
                <div style="margin-top:20px">
                <p>BACK TO MENU</p>
                </div>
                <div id = "back-button">
                  <img src="https://res.cloudinary.com/minquant/image/upload/v1/development/6t77uhhs2b8pp9oy7klg5gkg5cbu" alt="">
                </div>
              </div>
            </div>
          </div>
        </div>
        `
    const toInsert = toInsertRaw.trim()

    // insertHere.innerHTML = "<p>BACK TO MENU</p><p>BACK TO MENU</p>"
    insertHere.innerHTML = toInsert;


  }
}
