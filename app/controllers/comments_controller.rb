class CommentsController < ApplicationController
  def create
    @comment = Comment.create(content:params[:content], user:current_user, recipe_id:params[:recipe_id])
    recipe_id = params[:recipe_id]
    @recipe = Recipe.find(params["recipe_id"])
    redirect_to :back
  end

  def show
    @comment = User.find([:id]).comments.all
    @comment2 = User.find([:id]).comments.find(params[:comment_id])
    puts @comment2
  end

  def destroy
    @comment = Comment.find(params[:id]).destroy
    puts @comment

    redirect_to :back
  end
end
