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
    const snackTitles = snacks.querySelectorAll('.menu-card-title-container');

    const menuCategories = document.querySelectorAll('#categories h3');

    // check if there are any menu categories that are already highlighted as active
    const activeCategories = [];
    menuCategories.forEach((category) => {
      activeCategories.push(category.classList.contains('red-active'));
    })

    function isTrue(item) {
      return item === true;
    }

    const areActive = activeCategories.some(isTrue)



    let titleIsVisibleArray = []
    snackTitles.forEach((title)=>{
      // get the coordinates of the menu item's name
      const titleRect = title.getBoundingClientRect();

      /* set a variable that gives true or false as to whether the coordinates are within the viewport */
      var is_visible = titleRect.top >= 0 && titleRect.left >= 0 &&
      titleRect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
      titleRect.right <= (window.innerWidth || document.documentElement.clientWidth);

      // push the result of whether picture is visible into array
      titleIsVisibleArray.push(is_visible);
    })

    // check whether there is any true in the array. if yes then change the color. if no then remove the color.
    console.log(titleIsVisibleArray);
    if (titleIsVisibleArray.includes(true) && areActive != true ) {
      catSnack.classList.add('red-active');
    } else {
      catSnack.classList.remove('red-active');
    }
/* only go red if every other category is not red */

    console.log(menuCategories);
    console.log(activeCategories);
    console.log(areActive);

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
