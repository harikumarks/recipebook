class RecipesController < ApplicationController
  before_filter :authenticate_user!

  def index

    @recipes = Recipe.order("name").paginate(page: params[:page]).per_page(10).where(:user_id => current_user.id )
    @recipe_categories=RecipeCategory.where(:id => @recipes.pluck(:recipe_category_id))

    respond_to do |format|

      format.html
      format.js
      format.json { render json: @recipes }
      format.xml  { render :xml => @recipes}
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @category= RecipeCategory.where(:id => @recipe.recipe_category_id)
    @recipe_ingredients=  @recipe.recipe_ingredients
    @ingredients =Ingredient.where(:id => @recipe_ingredients.pluck(:ingredient_id))
    @presteps=@recipe.presteps
    @steps=@recipe.steps


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipe }
    end
  end

  # GET /recipes/new
  # GET /recipes/new.json
  def new
    @recipe = Recipe.new
    @categories=RecipeCategory.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recipe }
    end
  end

  # GET /recipes/1/edit
  def edit
    @recipe = Recipe.find(params[:id])
    @categories=RecipeCategory.all
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(params[:recipe])


    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render json: @recipe, status: :created, location: @recipe }
        format.xml  { render :xml => @recipes}

      else
        @categories=RecipeCategory.all
        format.html { render action: "new" }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
        format.xml  { render :xml => @recipe.errors}

      end
    end
  end

  # PUT /recipes/1
  # PUT /recipes/1.json
  def update
    @recipe = Recipe.find(params[:id])


    respond_to do |format|
      if @recipe.update_attributes(params[:recipe])
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { head :no_content }
      else
        @categories=RecipeCategory.all
        format.html { render action: "edit" }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy


    respond_to do |format|
      format.html { redirect_to recipes_url }
      format.json { head :no_content }
      format.js   { render action: "index"  }
    end
  end


end
