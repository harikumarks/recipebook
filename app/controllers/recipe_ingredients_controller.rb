class RecipeIngredientsController < ApplicationController
  before_filter :init_objects
  before_filter :authenticate_user!

  def init_objects
    @recipe_ingredient
    @recipe_id
  end


  # GET /recipe_ingredients/new
  # GET /recipe_ingredients/new.json
  def new
    @recipe_ingredient = RecipeIngredient.new
    @recipe_id=params[:recipe_id]
    @ingredients= Ingredient.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recipe_ingredient }
    end
  end

  # GET /recipe_ingredients/1/edit
  def edit
    @recipe_ingredient = RecipeIngredient.find(params[:id])
    @recipe_id=@recipe_ingredient.recipe_id
    @ingredients =Ingredient.all#(:id => @recipe_ingredients.pluck(:ingredient_id))

  end

  # POST /recipe_ingredients
  # POST /recipe_ingredients.json
  def create
    @recipe_ingredient = RecipeIngredient.new(params[:recipe_ingredient])
    @recipe_id=@recipe_ingredient.recipe_id

    respond_to do |format|
      if @recipe_ingredient.save
        format.html { redirect_to recipe_path(@recipe_ingredient.recipe_id)}
        format.json { render json: @recipe_ingredient, status: :created, location: @recipe_ingredient }
      else
        @ingredients= Ingredient.all
        format.html { render action: "new" }
        format.json { render json: @recipe_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recipe_ingredients/1
  # PUT /recipe_ingredients/1.json
  def update
    @recipe_ingredient = RecipeIngredient.find(params[:id])
    @recipe_id=@recipe_ingredient.recipe_id
    respond_to do |format|
      if @recipe_ingredient.update_attributes(params[:recipe_ingredient])
        format.html {  redirect_to  recipe_path(@recipe_ingredient.recipe_id) }
        format.json { head :no_content }
      else
        @ingredients= Ingredient.all
        format.html { render action: "edit" }
        format.json { render json: @recipe_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_ingredients/1
  # DELETE /recipe_ingredients/1.json
  def destroy
    @recipe_ingredient = RecipeIngredient.find(params[:id])
    @recipe_ingredient.destroy

    respond_to do |format|
      format.html { redirect_to recipe_path(@recipe_ingredient.recipe_id) }
      format.json { head :no_content }
    end
  end
end
