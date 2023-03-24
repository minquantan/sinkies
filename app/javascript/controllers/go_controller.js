import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    // this.outputTarget.textContent = 'Hello, Stimulus!'
    // console.log("work you retarded git")
  }

  goToSection () {

    // get the element that was clicked
    const clickedCategory = this.element.className

    // pair the element that was clicked to it's destination
    let clickDestination = '';
    switch (clickedCategory) {
      case 'link-to-mains':
        clickDestination = 'gate-to-mains';
        break;
      case 'link-to-snacks':
        clickDestination = 'gate-to-snacks';
        break;
      case 'link-to-desserts':
        clickDestination = 'gate-to-desserts';
        break;
      case 'link-to-sets':
        clickDestination = 'gate-to-sets';
        break;
      case 'link-to-drinks':
        clickDestination = 'gate-to-drinks';
        break;

      default:
        console.log('not again you wanker');
        break;
    }

    console.log(document.querySelector('.gate-to-mains'));
    console.log(clickedCategory);
    console.log(clickDestination);
    // get the element that must be scrolled to
    const destination = document.querySelector(`.${clickDestination}`);
    console.log(destination);

    // bring destination into view
    destination.scrollIntoView(true);
  }
}
