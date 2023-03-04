import { Controller } from "@hotwired/stimulus"


function isInViewport(element) {
  const rect = element.getBoundingClientRect();
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
    const mains = document.getElementById("mains");
    const snacks = document.getElementById("snacks");
    const desserts = document.getElementById("desserts");
    const sets = document.getElementById("sets");
    const drinks = document.getElementById("drinks");

    console.log("im back again");

    const mainsRect = mains.getBoundingClientRect();
    const snacksRect = snacks.getBoundingClientRect();
    const dessertsRect = desserts.getBoundingClientRect();
    const setsRect = sets.getBoundingClientRect();
    const drinksRect = drinks.getBoundingClientRect();


    const clientHeight = document.documentElement.clientHeight;
    // const mainsHeight = mains.getBoundingClientRect().y;
    // console.log(clientHeight);
    // console.log(mainsHeight);

    // this means that we are scrolling down, and therefore away from the mains section.



    // if (clientHeight > mainsTop && clientHeight > mainsBottom) {
    //   console.log(clientHeight)
    //   console.log(mainsRect.top)
    //   console.log(mainsRect.bottom)
    // }

    // if (
    //   drinksRect.top >= 0 &&
    //   drinksRect.bottom <= (window.innerHeight || document.documentElement.clientHeight)) {
    //   console.log(drinksRect.top)
    //   console.log(drinksRect.bottom)
    // }

    // console.log(drinksRect.top)
    // console.log(drinksRect.bottom)

    console.log(setsRect.top)
    console.log(setsRect.bottom)

  }
}
