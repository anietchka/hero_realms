import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["firstQuestion", "collection", "secondQuestionIfObject"]

  goTo2() {
    this.firstQuestionTarget.style.display = "none"
    if (this.collectionTarget.value === 'Objet') {
      console.log("C'est une carte Objet");
      this.secondQuestionIfObjectTarget.style.display = 'block'
    } else if (this.collectionTarget.value === 'Action'){
      console.log("C'est une carte Action");
    } else { console.log("C'est une carte Champion")}
  }

}
