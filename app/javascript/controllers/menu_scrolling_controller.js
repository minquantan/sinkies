import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="menu-scrolling"
export default class extends Controller {
  connect() {
    console.log("the menu-scrolling controller is up")
  }

  colors() {
    const snacks = document.getElementById("snacks");
    const snacksRect = snacks.getBoundingClientRect();
    const catSnack = document.getElementById("cat-snack");

    const snackImages = snacks.querySelectorAll('.menu-image-container');

    let imageIsVisibleArray = []
    snackImages.forEach((image)=>{
      // get the coordinates of the menu item picture
      const imageRect = image.getBoundingClientRect();

      /* set a variable that gives true or false as to whether the picture's coordinates are within the viewport, ie
      picture is visible */
      var is_visible = imageRect.top >= 0 && imageRect.left >= 0 &&
      imageRect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
      imageRect.right <= (window.innerWidth || document.documentElement.clientWidth);

      // push the result of whether picture is visible into array
      imageIsVisibleArray.push(is_visible);
    })
    // check whether there is any true in the array. if yes then change the color. if no then remove the color.
    console.log(imageIsVisibleArray);
    if (imageIsVisibleArray.includes(true)) {
      catSnack.classList.add('red-active');
    } else {
      catSnack.classList.remove('red-active');
    }
/* CHANGE FROM THE IMAGE TO THE NAME OF DISH FOR BETTER RESULTS */

  }
}
              // const mains = document.getElementById("mains");
              // const desserts = document.getElementById("desserts");
              // const sets = document.getElementById("sets");
              // const drinks = document.getElementById("drinks");

              // const mainsRect = mains.getBoundingClientRect();
              // const dessertsRect = desserts.getBoundingClientRect();
              // const setsRect = sets.getBoundingClientRect();
              // const drinksRect = drinks.getBoundingClientRect();

              // const catMain = document.getElementById("cat-main");
              // const catDessert = document.getElementById("cat-dessert");
              // const catDrink = document.getElementById("cat-drink");
              // const catSet = document.getElementById("cat-set");
