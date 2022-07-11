class AddRecipeIdToNotes < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :recipe_id, :integer
  end
end
