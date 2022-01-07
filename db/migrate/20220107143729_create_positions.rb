class CreatePositions < ActiveRecord::Migration[6.1]
  def change
    create_table :positions do |t|
      t.string :name
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
