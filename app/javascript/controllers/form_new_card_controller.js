import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["discardEnemyIfThrow", "sacrifyNotForChamp", "combineNotForObject", "noChoiceOnlyChamp", "noChoiceOnlyAction", "noChoiceForActionChamp", "onlyForChamp", "notForObject", "forEveryOne", "collection", "noColor", "sacrifiable", "optionsIfSacrifiable", "isChampion", "gard", "lifeOfGard", "lifeOfChamp", "isAChoice", "isNoChoice", "choice", "combo", "optionsIfCombinable", "combineNotChampion", "combineNotChoice", "combineNotAction"]

  validateCollection(){
    if (this.collectionTarget.value === 'Objet') {
      this.forEveryOneTarget.classList.remove('d-none');
      this.notForObjectTarget.classList.add('d-none');
      this.noColorTarget.value = 'Aucune';
      this.onlyForChampTarget.classList.add('d-none');
      this.isChampionTarget.value = false;
      this.choiceTarget.value = false;
      this.noChoiceForActionChampTarget.classList.add('d-none');
      this.combineNotForObjectTarget.classList.add('d-none');
      this.sacrifyNotForChampTarget.classList.remove('d-none');
      this.discardEnemyIfThrowTarget.classList.add('d-none');
    } else if (this.collectionTarget.value === 'Action') {
      this.forEveryOneTarget.classList.remove('d-none');
      this.notForObjectTarget.classList.remove('d-none');
      this.noColorTarget.value = null;
      this.onlyForChampTarget.classList.add('d-none');
      this.isChampionTarget.value = false;
      this.choiceTarget.value = false;
      this.noChoiceForActionChampTarget.classList.remove('d-none');
      this.noChoiceOnlyActionTarget.classList.remove('d-none');
      this.noChoiceOnlyChampTarget.classList.add('d-none');
      this.combineNotForObjectTarget.classList.remove('d-none');
      this.sacrifyNotForChampTarget.classList.remove('d-none');
      this.discardEnemyIfThrowTarget.classList.remove('d-none');
      this.combineNotActionTarget.classList.add('d-none');
      this.combineNotChampionTarget.classList.remove('d-none');
    } else if (this.collectionTarget.value === 'Champion') {
      this.forEveryOneTarget.classList.remove('d-none');
      this.notForObjectTarget.classList.remove('d-none');
      this.noColorTarget.value = null;
      this.onlyForChampTarget.classList.remove('d-none');
      this.isChampionTarget.value = true;
      this.noChoiceForActionChampTarget.classList.remove('d-none');
      this.noChoiceOnlyActionTarget.classList.add('d-none');
      this.noChoiceOnlyChampTarget.classList.remove('d-none');
      this.combineNotForObjectTarget.classList.remove('d-none');
      this.sacrifyNotForChampTarget.classList.add('d-none');
      this.combineNotActionTarget.classList.remove('d-none');
      this.combineNotChampionTarget.classList.add('d-none');
   } else {
      this.forEveryOneTarget.classList.add('d-none')
   }
  };

  validateSacrifiable(){
    if (this.sacrifiableTarget.checked === true){
      console.log("Hello")
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
      this.optionsIfCombinableTarget.classList.remove('d-none');
    } else {
      this.optionsIfCombinableTarget.classList.add('d-none');
    }
  };
}
