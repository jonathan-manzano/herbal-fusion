class CommentsController < ApplicationController
  def create
    @comment = Comment.create(content: params[:content], user_id: params[:user_id], recipe_id: params[:recipe_id])
  end

  def destroy
    @comment = Comment.find(:id).destroy
  end
end
