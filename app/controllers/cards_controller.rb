class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(cards_params)
    @card.save
    redirect_to cards_path
  end

  private

  def cards_params
    params.require(:card).permit(:name, :photo, :collection, :price, :damage, :color, :cash, :draw, :heal, :discard, :discard_enemy, :card_discarding_on_top, :next_action_purchased_on_top_if_combine, :heal_for_all_champs, :next_card_purchased_in_hand_if_combine, :life_of_champ, :life_of_gard, :sacrify, :choice, :damage_for_all_champs, :combine, :damage_if_sacrify, :throw, :knock_ou_champ, :damage_for_other_green, :damage_for_other_champ, :champ_from_discarding_on_top, :damage_for_other_gard, :mobilize_champ_if_combine, :damage_if_throw, :damage_if_combine, :damage_if_choice, :cash_if_combine, :draw_if_combine, :discard_enemy_if_combine, :heal_if_combine, :discard_enemy_if_throw, :heal_for_all_champs_if_combine, :heal_for_all_champs_if_choice, :cash_if_choice, :knock_out_champ_if_combine, :heal_if_choice, :discard_if_combine, :next_card_purchased_on_top_if_combine, :gard, :champion )
  end
end
