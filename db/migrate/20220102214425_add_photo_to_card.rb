class AddPhotoToCard < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :photo, :string
  end
end
