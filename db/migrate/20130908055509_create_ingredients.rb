class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :unit
      t.integer :recipe_id
      t.integer :ingredient_category_id

      t.timestamps
    end
  end
end
