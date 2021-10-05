class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.float :price
      t.references :platform, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
