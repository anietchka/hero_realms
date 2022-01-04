class AddGardColumnToCard < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :gard, :boolean
    add_column :cards, :champion, :boolean
  end
end
