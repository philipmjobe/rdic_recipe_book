class AddDefaultToIngredients < ActiveRecord::Migration[6.1]
  def change
    change_column_default :recipes, :ingredients, from: nil, to: ""
    change_column_default :recipes, :directions, from: nil, to: ""

  end
end
