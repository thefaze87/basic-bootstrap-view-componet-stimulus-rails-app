import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [ "name", "output" ]

  greet() {
    const element = this.nameTarget
    const name = element.value
    this.outputTarget.textContent =
      `Hello, ${name}!`
  }
}