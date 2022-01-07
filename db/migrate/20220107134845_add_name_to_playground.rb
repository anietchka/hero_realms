class AddNameToPlayground < ActiveRecord::Migration[6.1]
  def change
    add_column :playgrounds, :name, :string
  end
end
