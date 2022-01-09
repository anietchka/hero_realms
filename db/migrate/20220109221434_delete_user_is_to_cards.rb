class DeleteUserIsToCards < ActiveRecord::Migration[6.1]
  def change
    remove_column :cards, :position_id
  end
end
