class RecipesController < ApplicationController
  before_filter :authenticate_user!, except: [:index]
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.order("created_at desc")
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = current_user.recipes.new
  end

  # GET /recipes/1/edit
  def edit
    @recipe = current_user.recipes.find(params[:id])
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = current_user.recipes.new(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'recipe was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recipe }
      else
        format.html { render action: 'new' }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    @recipe = current_user.recipes.find(params[:id])

    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'recipe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe = User.find(current_user).recipes.find(params[:id])

    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:description, :image, :title, :serving_size, :time, :ingredients, :steps, :allergies)
    end
end
