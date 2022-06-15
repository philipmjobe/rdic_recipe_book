class Recipe < ApplicationRecord
  validates :name, presence: true
  has_many :notes 

  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(". ")
  end
end
