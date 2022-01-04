import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["discardEnemyIfThrow", "collection", "secondQuestionIfObject", "noColor", "sacrifiable", "optionsIfSacrifiable", "isAChampion", "gard", "secondQuestionIfChampion", "lifeOfGard", "lifeOfChamp", "isAChoice", "isNoChoice", "choice", "combo", "optionsIfCombinable", "combineNotChampion", "combineNotChoice", "secondQuestionIfAction"]

  validateCollection(){
    if (this.collectionTarget.value === 'Objet') {
      this.secondQuestionIfObjectTarget.classList.remove('d-none');
      this.secondQuestionIfChampionTarget.classList.add('d-none');
      this.secondQuestionIfActionTarget.classList.add('d-none');
      this.discardEnemyIfThrowTarget.classList.add('d-none');
      this.optionsIfSacrifiableTarget.classList.add('d-none');
      this.optionsIfCombinableTarget.classList.add('d-none');
      this.noColorTarget.value = 'Aucune';
      console.log("C'est une carte Objet");
    } else if (this.collectionTarget.value === 'Action') {
      this.secondQuestionIfActionTarget.classList.remove('d-none');
      this.optionsIfSacrifiableTarget.classList.add('d-none');
      this.optionsIfCombinableTarget.classList.add('d-none');
      this.secondQuestionIfChampionTarget.classList.add('d-none');
      this.secondQuestionIfObjectTarget.classList.add('d-none');
    } else if (this.collectionTarget.value === 'Champion') {
      this.secondQuestionIfActionTarget.classList.add('d-none');
      this.secondQuestionIfChampionTarget.classList.remove('d-none');
      this.secondQuestionIfObjectTarget.classList.add('d-none');
      this.optionsIfSacrifiableTarget.classList.add('d-none');
      this.optionsIfCombinableTarget.classList.add('d-none');
      this.combineNotChampionTarget.classList.add('d-none');
      this.isAChampion.value = true
   } else {
      this.secondQuestionIfObjectTarget.classList.add('d-none');
      this.secondQuestionIfChampionTarget.classList.add('d-none');
      this.secondQuestionIfActionTarget.classList.add('d-none');
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

  validateIfIsChoice(){
    if (this.choiceTarget.checked === true){
      this.isAChoiceTarget.classList.remove('d-none');
      this.isNoChoiceTarget.classList.add('d-none');
      this.combineNotChoiceTarget.classList.add('d-none');
    } else {
      this.isAChoiceTarget.classList.add('d-none');
      this.isNoChoiceTarget.classList.remove('d-none');
      this.combineNotChoiceTarget.classList.remove('d-none');
    }
  };

  validateIfCombo(){
    if (this.comboTarget.checked === true) {
      console.log("Hello")
      this.optionsIfCombinableTarget.classList.remove('d-none');
    } else {
      this.optionsIfCombinableTarget.classList.add('d-none');
    }
  };
}
