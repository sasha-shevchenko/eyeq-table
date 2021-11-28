import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['form'];

   revealContent() {
    this.formTarget.classList.remove("d-none");
    console.log(this.formTarget);
  }
}
