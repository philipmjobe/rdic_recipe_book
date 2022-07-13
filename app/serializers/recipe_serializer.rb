class RecipeSerializer < ActiveModel::Serializer
  attributes :id, 
             :name, 
             :ingredients, 
             :directions, 
             :contributor, 
             :category, 
             :ingredients_list, 
             :directions_list
  has_many :notes
end
