import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["firstQuestion", "collection", "secondQuestionIfObject", "noColor", "sacrifiable", "optionsIfSacrifiable", "isAChampion", "gard", "secondQuestionIfChampion", "lifeOfGard", "lifeOfChamp", "isAChoice", "isNoChoice"]

  validateCollection(){
    if (this.collectionTarget.value === 'Objet') {
      this.secondQuestionIfObjectTarget.classList.remove('d-none');
      this.secondQuestionIfChampionTarget.classList.add('d-none');
      this.noColorTarget.value = 'Aucune';
      console.log("C'est une carte Objet");
    } else if (this.collectionTarget.value === 'Action') {
      console.log("C'est une carte Action");
    } else { console.log("C'est une carte Champion");
      this.secondQuestionIfChampionTarget.classList.remove('d-none');
      this.secondQuestionIfObjectTarget.classList.add('d-none');
      this.isAChampion.value = true
   }
  };

  validateSacrifiable(){
    if (this.sacrifiableTarget.checked === true){
      this.optionsIfSacrifiableTarget.classList.remove('d-none')
    } else { this.optionsIfSacrifiableTarget.classList.add('d-none')}
  };

  validateIfGard(){
    if (this.gardTarget.checked === true){
      this.lifeOfGardTarget.classList.remove('d-none');
      this.lifeOfChampTarget.classList.add('d-none');
    } else {
      this.lifeOfGardTarget.classList.add('d-none');
      this.lifeOfChampTarget.classList.remove('d-none');}

  };
}
