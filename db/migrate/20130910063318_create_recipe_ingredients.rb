class CreateRecipeIngredients < ActiveRecord::Migration
 def change
    create_table :recipeingredients do |t|
      t.string :name
      t.string :unit
      t.integer :recipe_id
      t.integer :ingredient_category_id

      t.timestamps
    end
  end
end
