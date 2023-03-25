import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    console.log("let's try to pop out these gallery images")
  }

  popout() {
    const name = this.element.querySelectorAll("p")[0].innerText;
    const description = this.element.querySelectorAll("p")[1].innerText;
    const image = this.element.querySelector("img").src;
    console.log(image);


    const modal = document.getElementById("gallery-modal");
    modal.innerHTML = `
      <img src="${image}">
      <div id="gallery-modal-details">
        <div style="display:flex;align-items:center;justify-content:space-between">
          <h4 style="margin:0">${name}</h4>
          <div id="back-invitation" class="quit-modal">
            <div>
              <p style="margin-top:8px;margin-bottom:0px;font-size:14px">BACK</p>
            </div>
            <div id="back-button" style="width:30px;display:flex;align-items:center">
              <img src="https://res.cloudinary.com/minquant/image/upload/v1679308978/mascott_stretch_dyhqqi.png" alt="">
            </div>
          </div>
        </div>
        <p>${description}</p>
      </div>
    `
  }
}
