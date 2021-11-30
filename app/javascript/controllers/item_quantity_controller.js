import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['quantity'];

   connect() {
     console.log("connected");
    }

    createSessionItem(event) {
      event.preventDefault();
      event.stopPropagation();

      fetch(this.element.dataset.url, {
        method: 'POST',
        headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
      })
      .then(response => response.json())
      .then((data) => {

          this.quantityTarget.innerText = Number.parseInt(this.quantityTarget.innerText, 10) + 1;
          console.log(data)
        });
    }
}
