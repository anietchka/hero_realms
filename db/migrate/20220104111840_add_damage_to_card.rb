class AddDamageToCard < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :damage_if_throw, :integer
    add_column :cards, :damage_if_combine, :integer
    add_column :cards, :damage_if_choice, :integer
    add_column :cards, :cash_if_combine, :integer
    add_column :cards, :draw_if_combine, :integer
    add_column :cards, :discard_enemy_if_combine, :integer
    add_column :cards, :heal_if_combine, :integer
    add_column :cards, :discard_enemy_if_throw, :integer
    add_column :cards, :heal_for_all_champs_if_combine, :integer
    add_column :cards, :heal_for_all_champs_if_choice, :integer
    add_column :cards, :cash_if_choice, :integer
    add_column :cards, :knock_out_champ_if_combine, :integer
    add_column :cards, :heal_if_choice, :integer
    add_column :cards, :discard_if_combine, :integer
    add_column :cards, :next_card_purchased_on_top_if_combine, :integer
    rename_column :cards, :mobilize_champ, :mobilize_champ_if_combine
    rename_column :cards, :next_card_purchased_in_hand, :next_card_purchased_in_hand_if_combine
    rename_column :cards, :next_action_purchased_on_top, :next_action_purchased_on_top_if_combine
  end
end
