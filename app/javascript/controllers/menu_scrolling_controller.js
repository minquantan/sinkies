import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="menu-scrolling"
export default class extends Controller {
  connect() {
    console.log("the menu-scrolling controller is up")
  }

  colors() {
/*     const catMain = document.getElementById("cat-main");
    const catSnack = document.getElementById("cat-snack");
    const catDessert = document.getElementById("cat-dessert");
    const catSet = document.getElementById("cat-set");
    const catDrink = document.getElementById("cat-drink");

    // get all the food categories
    const mains = document.getElementById("mains");
    const snacks = document.getElementById("snacks");
    const desserts = document.getElementById("desserts");
    const sets = document.getElementById("sets");
    const drinks = document.getElementById("drinks");

    // get all the individual menu items from each food category
    const mainTitles = mains.querySelectorAll('.menu-card-title-container');
    const snackTitles = snacks.querySelectorAll('.menu-card-title-container');
    const dessertTitles = desserts.querySelectorAll('.menu-card-title-container');
    const setTitles = sets.querySelectorAll('.menu-card-title-container');
    const drinkTitles = drinks.querySelectorAll('.menu-card-title-container');
    // console.log(menuTitles)
    //-------------------------------------------------------------------------------

    // define function to establish if an element is visible in the viewport
    function isVisible(element) {
      const rect = element.getBoundingClientRect();
      return (
          rect.top >= 0 &&
          rect.left >= 0 &&
          rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
          rect.right <= (window.innerWidth || document.documentElement.clientWidth)
      );
    }
  //-------------------------------------------------------------------------------

  // check if there are any menu categories that are already highlighted as active
  const activeCategories = [];
  const menuCategories = document.querySelectorAll('#categories h3');
  menuCategories.forEach((category) => {
    activeCategories.push(category.classList.contains('red'));
  })

  const areActive = activeCategories.some(isTrue)
  function isTrue(item) {
    return item === true;
  }
  //-------------------------------------------------------------------------------

  // see if the position of main titles are viewable

  const visibleMains = [];
  mainTitles.forEach((title) => {
    console.log(title.innerHTML);
    visibleMains.push(isVisible(title));
  })
  console.log('these are the visible mains', visibleMains);
  console.log('there are active menu categories', areActive);

  if (visibleMains.includes(true)  && areActive != true ) {
    catMain.classList.add('red');
    catMain.insertAdjacentText('test');
  } else {
    catMain.classList.remove('red');
  } */


  const isElementXPercentInViewport = function(el, percentVisible) {
    let
      rect = el.getBoundingClientRect(),
      windowHeight = (window.innerHeight || document.documentElement.clientHeight);

    return !(
      Math.floor(100 - (((rect.top >= 0 ? 0 : rect.top) / +-rect.height) * 100)) < percentVisible ||
      Math.floor(100 - ((rect.bottom - windowHeight) / rect.height) * 100) < percentVisible
    )
  };

  const mains = document.getElementById("mains");
  const snacks = document.getElementById("snacks");
  const desserts = document.getElementById("desserts");
  const sets = document.getElementById("sets");
  const drinks = document.getElementById("drinks");

  const catMain = document.getElementById("cat-main");
  const catSnack = document.getElementById("cat-snack");
  const catDessert = document.getElementById("cat-dessert");
  const catSet = document.getElementById("cat-set");
  const catDrink = document.getElementById("cat-drink");

  if (isElementXPercentInViewport(mains, 30)) {
    catMain.classList.add('red');
  } else {
    catMain.classList.remove('red');
  }

  if (isElementXPercentInViewport(snacks, 60)) {
    catSnack.classList.add('red');
  } else {
    catSnack.classList.remove('red');
  }

  if (isElementXPercentInViewport(desserts, 60)) {
    catDessert.classList.add('red');
  } else {
    catDessert.classList.remove('red');
  }

  if (isElementXPercentInViewport(sets, 60)) {
    catSet.classList.add('red');
  } else {
    catSet.classList.remove('red');
  }

  if (isElementXPercentInViewport(drinks, 20)) {
    catDrink.classList.add('red');
  } else {
    catDrink.classList.remove('red');
  }


  }
}
