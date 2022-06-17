class Recipe < ApplicationRecord
  has_many :notes
  validates :name, presence: true

  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(". ")
  end

end
