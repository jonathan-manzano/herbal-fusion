class CommentsController < ApplicationController
  def create
    @comment = Comment.create(content:params[:content], user:current_user, recipe_id:params[:recipe_id])
    @recipe = Recipe.find(params['recipe_id'])

    redirect_to :back
  end

  def show
    @comment = User.find([:id]).comments.all
  end

  def destroy
    @comment = Comment.find(:id).destroy
  end
end
