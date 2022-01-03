class ChangeTypeOfCardAgain < ActiveRecord::Migration[6.1]
  def change
    rename_column :cards, :type_of_card, :collection
  end
end
