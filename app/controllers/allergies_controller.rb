class AllergiesController < ApplicationController
  def create
    @allergy = Allergy.create(content: params[:content], recipe_id: params[:recipe_id])
  end

  def destroy
    @allergy = Allergy.find(:id).destroy
  end
end
