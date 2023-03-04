import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="menu-scrolling"
export default class extends Controller {
  connect() {
    console.log(2)
  }
}
