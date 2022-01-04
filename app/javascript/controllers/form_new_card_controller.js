import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["firstQuestion", "collection", "secondQuestionIfObject", "noColor", "sacrifiable", "optionsIfSacrifiable"]

  validateCollection(){
    if (this.collectionTarget.value === 'Objet') {
      this.secondQuestionIfObjectTarget.classList.remove('d-none');
      this.noColorTarget.value = 'Aucune'
      console.log(this.noColorTarget.value)
      console.log("C'est une carte Objet");
    } else if (this.collectionTarget.value === 'Action') {
      console.log("C'est une carte Action");
    } else { console.log("C'est une carte Champion") }
  };

  validateSacrifiable(){
    if (this.sacrifiableTarget.checked === true){
      this.optionsIfSacrifiableTarget.classList.remove('d-none')
    } else { this.optionsIfSacrifiableTarget.classList.add('d-none')}
    console.log(this.sacrifiableTarget.checked)
  }
}
