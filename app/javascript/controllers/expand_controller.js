import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {

  connect() {
    // this.outputTarget.textContent = 'Hello, Stimulus!'
    console.log("the expansion begins now");
  }

  popout () {
    // get the name
    const selectedName = this.element.querySelector('h3').innerText;
    console.log(selectedName);
    console.log(this.element);

    // $.ajax({
    //   data: selectedName,
    //   type: 'POST',
    //   url: "/menu"
    // });
    fetch("/menu", {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: { name: selectedName }
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
      })




  }

}
