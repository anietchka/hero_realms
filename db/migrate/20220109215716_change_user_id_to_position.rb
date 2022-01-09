class ChangeUserIdToPosition < ActiveRecord::Migration[6.1]
  def change
    rename_column :cards, :user_id, :position_id
  end
end
