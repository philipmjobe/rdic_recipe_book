class RemoveNotesFromRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :notes, :string
  end
end
