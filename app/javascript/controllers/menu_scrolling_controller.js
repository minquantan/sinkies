import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="menu-scrolling"
export default class extends Controller {
  connect() {
    const catMain = document.getElementById("cat-main");
    catMain.classList.add('red');
    console.log("the menu-scrolling controller is up")
  }

  colors() {
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
