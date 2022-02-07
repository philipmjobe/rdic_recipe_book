class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.string :directions
      t.string :category
      t.string :contributor

      t.timestamps
    end
  end
end
