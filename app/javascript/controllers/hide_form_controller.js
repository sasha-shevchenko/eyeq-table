import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['form'];

  toggleForm() {
    this.formTarget.classList.toggle('d-none');
  }
}
