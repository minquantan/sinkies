import { Controller } from "@hotwired/stimulus"


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

    const mainsRect = mains.getBoundingClientRect();
    const snacksRect = snacks.getBoundingClientRect();
    const dessertsRect = desserts.getBoundingClientRect();
    const setsRect = sets.getBoundingClientRect();
    const drinksRect = drinks.getBoundingClientRect();

    const catMain = document.getElementById("cat-main");
    const catSnack = document.getElementById("cat-snack");
    const catDessert = document.getElementById("cat-dessert");
    const catDrink = document.getElementById("cat-drink");
    const catSet = document.getElementById("cat-set");


    // const clientHeight = document.documentElement.clientHeight;
    // const mainsHeight = mains.getBoundingClientRect().y;
    // console.log(clientHeight);
    // console.log(mainsHeight);

    // this means that we are scrolling down, and therefore away from the mains section.



    // if (clientHeight > mainsTop && clientHeight > mainsBottom) {
    //   console.log(clientHeight)
      console.log(mainsRect.top)
      // console.log(mainsRect.bottom)
    // }

    if (251 > mainsRect.top &&
      mainsRect.top > -909 &&
      1516 > mainsRect.bottom &&
      mainsRect.bottom > 356){
        console.log("the main courses are in the viewport you nigga worm!");
        // debugger
        catMain.classList.add("red-active");
        console.log(catMain.innerText)


    } else {
      console.log("you refuse to work?!");
    }



    // at the top of the main courses
    // 250.66250610351562 top value
    // 1515.6625061035156 bottom value

    // at the bottom of the main courses
    // -908.5375366210938 top value
    // 356.46246337890625 bottom value
  }
}
