import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['quantity', 'price'];

   connect() {
     console.log("connected");
    }

    createSessionItem(event) {
      event.preventDefault();
      event.stopPropagation();

      fetch(this.element.dataset.url, {
        method: 'POST',
        headers: { 'Accept': "text/plain", 'X-CSRF-Token': csrfToken() },
      })
        .then(response => response.text())
        .then((data) => {
          const price = Number.parseFloat(this.priceTarget.innerHTML.replace(",", "."))
          const updateOrderPriceEvent = new CustomEvent("updated-order", {detail: {price: price} })
          window.dispatchEvent(updateOrderPriceEvent)
          this.element.outerHTML = data;
        })

    }

    deleteSessionItem(event) {
      event.preventDefault();
      event.stopPropagation();
      // console.log(event.currentTarget)
      // console.log(event.currentTarget.dataset.deleteUrl)

      fetch(event.currentTarget.dataset.deleteUrl, {
        method: 'DELETE',
        headers: { 'Accept': 'text/plain', 'X-CSRF-Token': csrfToken() },
      })
      .then(response => response.text())
      .then((data) => {
        const price = Number.parseFloat(this.priceTarget.innerHTML.replace(",", "."))
        const updateOrderPriceEvent = new CustomEvent("updated-order", {detail: {price: -price} })
        window.dispatchEvent(updateOrderPriceEvent)
        this.element.outerHTML = data;
      })
    }
}
