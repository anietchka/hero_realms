class AddForeigtKeyToCards < ActiveRecord::Migration[6.1]
  def change
    add_reference(:cards, :position, foreign_key: true)
  end
end
