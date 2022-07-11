class Recipe < ApplicationRecord
  has_many :notes, through: :recipes
  validates :name, presence: true

  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(". ")
  end

end
