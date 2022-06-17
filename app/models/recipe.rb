class Recipe < ApplicationRecord
  validates :name, presence: true

  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(". ")
  end

  def recipe_notes
    recipe_notes = notes.all
  end 
end
