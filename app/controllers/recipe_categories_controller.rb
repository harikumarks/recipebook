class RecipeCategoriesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @recipe_categories = RecipeCategory.paginate(page: params[:page]).per_page(10)
  end

  def new
    @recipe_category = RecipeCategory.new
  end

  def edit
    @recipe_category = RecipeCategory.find(params[:id])
  end

  def create
    @recipe_category = RecipeCategory.new(params[:recipe_category])

    respond_to do |format|
      if @recipe_category.save
        format.html { redirect_to recipe_categories_path, notice: 'Recipe category was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @recipe_category = RecipeCategory.find(params[:id])

    respond_to do |format|
      if @recipe_category.update_attributes(params[:recipe_category])
        format.html { redirect_to recipe_categories_path, notice: 'Recipe category was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @recipe_category = RecipeCategory.find(params[:id])
    @recipe_category.destroy

    respond_to do |format|
      format.html { redirect_to recipe_categories_url }
    end
  end
end
