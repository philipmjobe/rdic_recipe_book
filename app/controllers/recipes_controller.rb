class RecipesController < ApplicationController

  def index
    recipes = Recipe.all
    render json: recipes
  end 

  def show
    recipe = Recipe.find_by(id: params[:id])
    render json: recipe
  end 

  def create
    recipe = Recipe.new(
      name: params["name"],
      contributor: params["contributor"],
      ingredients: params["ingredients"],
      directions: params[:directions]
    )

    if recipe.save
      render json: recipe
    else
      render json: {errors: recipe.errors.full_messages},
      status: 422
    end
  end 
end
