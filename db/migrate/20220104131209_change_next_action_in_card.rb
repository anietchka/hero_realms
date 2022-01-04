class ChangeNextActionInCard < ActiveRecord::Migration[6.1]
  def change
    change_column :cards, :next_action_purchased_on_top_if_combine, 'boolean USING CAST(next_action_purchased_on_top_if_combine AS boolean)'
    change_column :cards, :mobilize_champ_if_combine, 'boolean USING CAST(mobilize_champ_if_combine AS boolean)'
    change_column :cards, :knock_out_champ_if_combine, 'boolean USING CAST(knock_out_champ_if_combine AS boolean)'
    change_column :cards, :next_card_purchased_on_top_if_combine, 'boolean USING CAST(next_card_purchased_on_top_if_combine AS boolean)'
    change_column :cards, :next_card_purchased_in_hand_if_combine, 'boolean USING CAST(next_card_purchased_in_hand_if_combine AS boolean)'
    change_column :cards, :card_discarding_on_top, 'boolean USING CAST(card_discarding_on_top AS boolean)'
    change_column :cards, :champ_from_discarding_on_top, 'boolean USING CAST(champ_from_discarding_on_top AS boolean)'
  end
end
