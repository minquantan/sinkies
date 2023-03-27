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
      <div id="gallery-modal-image">
        <img src="${image}">
      </div>
      <div id="gallery-modal-details">
        <div style="display:flex;align-items:center;justify-content:space-between;height:30px;margin-top:9px; margin-bottom:8px">
          <h4 style="margin-top:9px; margin-bottom:0px">${name}</h4>
          <div id="back-invitation" class="quit-modal" data-controller="gallery" data-action="click->gallery#closeModal">
            <div>
              <p style="margin-top:10px;margin-bottom:0px;font-size:14px">BACK</p>
            </div>
            <div id="back-button" style="width:30px;display:flex;align-items:center">
              <img src="https://res.cloudinary.com/minquant/image/upload/v1679308978/mascott_stretch_dyhqqi.png" alt="">
            </div>
          </div>
        </div>
        <p style="margin-top:0px;margin-bottom:20px">${description}</p>
      </div>
    `
     // add the background div's opacity
     document.getElementById("overlay").classList.add("active");
  }

  closeModal () {
    const insertHere = document.getElementById("gallery-modal")
    insertHere.innerHTML = ''

    // remove the background div's opacity
    document.getElementById("overlay").classList.remove("active");
  }
}
