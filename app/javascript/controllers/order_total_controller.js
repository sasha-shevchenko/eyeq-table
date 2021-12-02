import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "price" ]

  connect() {
    this.price = Number.parseFloat(this.priceTarget.innerHTML.replace(",", "."))
  }

  priceUpdate(event) {
    this.price += event.detail.price
    this.priceTarget.innerHTML = this.price.toFixed(2).replace(".", ",") + " €"
  }
}
