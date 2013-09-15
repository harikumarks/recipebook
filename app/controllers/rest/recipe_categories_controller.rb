class Rest::RecipeCategoriesController < ApplicationController


  def show
    if (params[:id])
      @recipe_category = RecipeCategory.find(params[:id])
    else
      @recipe_category = RecipeCategory.order("name")

    end
    respond_to do |format|
      format.xml { render xml: @recipe_category }
    end
  end

  def create
    @recipe_category = RecipeCategory.new(params[:recipe_category])

    respond_to do |format|
      if @recipe_category.save
        format.xml { render xml: @recipe_category, status: :created}
      else
        format.html { render xml: @recipe_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

    @recipe_category = RecipeCategory.find(params[:id])


    respond_to do |format|
      if @recipe_category.update_attributes(params[:recipe_category])
        format.xml { render xml: @recipe_category, status: :ok}
      else
        format.html { render xml: @recipe_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recipe_category = RecipeCategory.find(params[:id])


    respond_to do |format|
      if @recipe_category.destroy
        format.xml {  head :non_content,  status: :ok}
      else
        format.html { render xml: @recipe_category.errors, status: :unprocessable_entity }
      end

    end
  end
end
