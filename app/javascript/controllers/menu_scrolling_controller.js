import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="menu-scrolling"
export default class extends Controller {
  connect() {
    console.log("the menu-scrolling controller is up")
  }

  colors() {
    console.log("im back again")
  }
}
