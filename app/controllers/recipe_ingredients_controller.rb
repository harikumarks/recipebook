class RecipeIngredientsController < ApplicationController
  # GET /recipe_ingredients
  # GET /recipe_ingredients.json
  def index
    if params[:recipe_id]
    @recipe_ingredients = RecipeIngredient.paginate(page: params[:page]).per_page(2).where(:recipe_id => 1)
    else
      @recipe_ingredients=  RecipeIngredient.paginate(page: params[:page]).per_page(2).where(:recipe_id => 1)

      end
    @ingredients =Ingredient.where(:id => @recipe_ingredients.pluck(:ingredient_id))

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recipe_ingredients }
    end
  end


  # GET /recipe_ingredients/new
  # GET /recipe_ingredients/new.json
  def new
    @recipe_ingredient = RecipeIngredient.new
    @ingredients= Ingredient.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recipe_ingredient }
    end
  end

  # GET /recipe_ingredients/1/edit
  def edit
    @recipe_ingredient = RecipeIngredient.find(params[:id])
    @ingredients =Ingredient.all#(:id => @recipe_ingredients.pluck(:ingredient_id))

  end

  # POST /recipe_ingredients
  # POST /recipe_ingredients.json
  def create
    @recipe_ingredient = RecipeIngredient.new(params[:recipe_ingredient])

    respond_to do |format|
      if @recipe_ingredient.save
        format.html { redirect_to recipe_path(@recipe_ingredient.recipe_id)}
        format.json { render json: @recipe_ingredient, status: :created, location: @recipe_ingredient }
      else
        format.html { render action: "new" }
        format.json { render json: @recipe_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recipe_ingredients/1
  # PUT /recipe_ingredients/1.json
  def update
    @recipe_ingredient = RecipeIngredient.find(params[:id])

    respond_to do |format|
      if @recipe_ingredient.update_attributes(params[:recipe_ingredient])
        format.html {  redirect_to  recipe_path(@recipe_ingredient.recipe_id) }
        format.json { head :no_content }
      else
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
      format.html { redirect_to recipe_ingredients_url }
      format.json { head :no_content }
    end
  end
end
