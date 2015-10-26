class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :dish_id
      t.references :food, index: true, foreign_key: true
      t.float :amount
      t.string :unit_of_measure

      t.timestamps null: false
    end
  end
end
