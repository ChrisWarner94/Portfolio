import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    reset() {
        this.element.reset();
        alert("Your message has been sent ");
    }
}