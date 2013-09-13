class PrestepsController < ApplicationController
  before_filter :authenticate_user!
  # GET /presteps
  # GET /presteps.json
  def index
    @presteps = Prestep.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @presteps }
    end
  end

  # GET /presteps/1
  # GET /presteps/1.json
  def show
    @prestep = Prestep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prestep }
    end
  end

  # GET /presteps/new
  # GET /presteps/new.json
  def new
    @prestep = Prestep.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prestep }
    end
  end

  # GET /presteps/1/edit
  def edit
    @prestep = Prestep.find(params[:id])
  end

  # POST /presteps
  # POST /presteps.json
  def create
    @prestep = Prestep.new(params[:prestep])

    respond_to do |format|
      if @prestep.save
        format.html { redirect_to recipe_path(@prestep.recipe_id) }
        format.json { render json: @prestep, status: :created, location: @prestep }
      else
        format.html { render action: "new" }
        format.json { render json: @prestep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /presteps/1
  # PUT /presteps/1.json
  def update
    @prestep = Prestep.find(params[:id])

    respond_to do |format|
      if @prestep.update_attributes(params[:prestep])
        format.html { redirect_to recipe_path(@prestep.recipe_id) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prestep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presteps/1
  # DELETE /presteps/1.json
  def destroy
    @prestep = Prestep.find(params[:id])
    @prestep.destroy

    respond_to do |format|
      format.html { redirect_to presteps_url }
      format.json { head :no_content }
    end
  end
end
