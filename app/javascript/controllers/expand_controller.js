import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs"
import JsonpTemplatePlugin from "webpack/lib/web/JsonpTemplatePlugin";

export default class extends Controller {

  connect() {
    // this.outputTarget.textContent = 'Hello, Stimulus!'
    console.log("the expansion begins now");
  }


}
