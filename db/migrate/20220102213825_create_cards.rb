class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :type
      t.integer :price
      t.integer :damage
      t.string :color
      t.integer :cash
      t.integer :draw
      t.integer :heal
      t.integer :discard
      t.integer :discard_enemy
      t.integer :card_discarding_on_top
      t.integer :next_action_purchased_on_top
      t.integer :heal_for_all_champs
      t.integer :next_card_purchased_in_hand
      t.integer :life_of_champ
      t.integer :life_of_gard
      t.integer :sacrify
      t.boolean :choice
      t.integer :damage_for_all_champs
      t.boolean :combine
      t.string :damage_if_sacrify
      t.boolean :throw
      t.integer :knock_ou_champ
      t.integer :damage_for_other_green
      t.integer :damage_for_other_champ
      t.integer :champ_from_discarding_on_top
      t.integer :damage_for_other_gard
      t.integer :mobilize_champ

      t.timestamps
    end
  end
end
