import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    // this.outputTarget.textContent = 'Hello, Stimulus!'
    console.log("let's change the slide image")

  }


  changeImage() {
    var imgs = document.querySelectorAll('.slider img');
    var dots = document.querySelectorAll('.dot');
    var currentImg = 0;

    let n = 0;

    if (this.element.classList.contains('first-dot')) {
      n = 0
    }
    if (this.element.classList.contains('second-dot')) {
      n = 1
    }
    if (this.element.classList.contains('third-dot')) {
      n = 2
    }
    if (this.element.classList.contains('fourth-dot')) {
      n = 3
    }

    changeSlide(n);

    function changeSlide(n) {
      for (var i = 0; i < imgs.length; i++) { // reset
        imgs[i].style.opacity = 0;
        dots[i].className = dots[i].className.replace(' active', '');
      }

      currentImg = n;

      imgs[currentImg].style.opacity = 1;
      dots[currentImg].className += ' active';


    }

    console.log("changeSlide method is accessed")

  }

}
