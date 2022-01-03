class ChangeTypeOfCard < ActiveRecord::Migration[6.1]
  def change
    rename_column :cards, :type, :type_of_card
  end
end
