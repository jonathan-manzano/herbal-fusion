class LikesController < ApplicationController
  def create
    recipe = Recipe.find(params['recipe_id'])
    like = Like.create(user: current_user, recipe: recipe)
    redirect_to :back
  end

  def destroy
    like = Like.find(params[:id]).destroy
    redirect_to :back
  end
end
