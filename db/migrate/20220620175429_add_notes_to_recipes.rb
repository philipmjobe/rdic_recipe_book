class AddNotesToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :notes, :string
  end
end
