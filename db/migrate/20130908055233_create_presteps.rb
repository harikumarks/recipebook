class CreatePresteps < ActiveRecord::Migration
  def change
    create_table :presteps do |t|
      t.integer :sequence
      t.string :activity
      t.integer :time
      t.integer :recipe_id

      t.timestamps
    end
  end
end
