import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    // this.outputTarget.textContent = 'Hello, Stimulus!'
    console.log("MODAL SLIDESHOW HERE WE GO")


  }

  changeImage() {
    // console.log("image was clicked");
    var dish = this.element.parentElement.parentElement.parentElement;
    var imgs = dish.querySelectorAll('.slider-big img');
    console.log(imgs);

    var dots = this.element.parentElement.querySelectorAll('.thumbnail-image');
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
    // console.log(n)
    // console.log(imgs[n])

    function changeSlide(n) {
      for (var i = 0; i < imgs.length; i++) { // reset
        imgs[i].style.opacity = 0;
        dots[i].className = dots[i].className.replace('big-active', '');
      }

      currentImg = n;

      imgs[currentImg].style.opacity = 1;
      // dots[currentImg].className += 'active';
      dots[currentImg].classList.add("big-active");


    }
  }

}
