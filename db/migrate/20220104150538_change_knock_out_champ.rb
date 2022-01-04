class ChangeKnockOutChamp < ActiveRecord::Migration[6.1]
  def change
    change_column :cards, :knock_ou_champ, 'boolean USING CAST(knock_ou_champ AS boolean)'
  end
end
