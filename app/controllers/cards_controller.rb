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
    params.require(:card).permit(:name, :photo, :collection, :price, :damage, :color, :cash, :draw, :heal, :discard, :discard_enemy, :card_discarding_on_top, :next_action_purchased_on_top, :heal_for_all_champs, :next_card_purchased_in_hand, :life_of_champ, :life_of_gard, :sacrify, :choice, :damage_for_all_champs, :combine, :damage_if_sacrify, :throw, :knock_ou_champ, :damage_for_other_green, :damage_for_other_champ, :champ_from_discarding_on_top, :damage_for_other_gard, :mobilize_champ )
  end
end
