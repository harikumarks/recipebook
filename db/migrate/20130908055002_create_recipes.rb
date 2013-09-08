class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.integer :quantity
      t.integer :user_id
      t.integer :recipe_category_id

      t.timestamps
    end
  end
end
