import { Controller } from "@hotwired/stimulus"


function isInViewport(element) {
  const rect = element.getBoundingClientRect();
  console.log(rect)
  return (
      rect.top >= 0 &&
      rect.left >= 0 &&
      rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
      rect.right <= (window.innerWidth || document.documentElement.clientWidth)
  );
}

// Connects to data-controller="menu-scrolling"
export default class extends Controller {
  connect() {
    console.log("the menu-scrolling controller is up")
  }

  colors() {
    console.log("im back again")
    const menuCategories = document.querySelectorAll("#categories h3")
    const menuDisplays = document.querySelectorAll('#menu-displays > div')

    // menuCategories.forEach((category) => {
    //   console.log(category.innerHTML)
    // })

    menuDisplays.forEach((display) => {
      console.log(typeof(display))
      var rect = display.getBoundingClientRect();
      console.log(display.innerHTML)
      console.log(rect.top, rect.right, rect.bottom, rect.left);
    })

    // menuCategories.forEach((category) => {
    //   console.log(isInViewport(category))
    // })

  }
}
