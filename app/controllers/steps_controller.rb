class StepsController < ApplicationController
  before_filter :init_objects
  before_filter :authenticate_user!

  def init_objects
    @steps
    @recipe_id
  end


  # GET /steps/1
  # GET /steps/1.json
  def show
    @step = Step.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @step }
    end
  end

  # GET /steps/new
  # GET /steps/new.json
  def new
    @step = Step.new
    @recipe_id= params[:recipe_id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @step }
    end
  end

  # GET /steps/1/edit
  def edit
    @step = Step.find(params[:id])
    @recipe_id=@step.recipe_id
  end

  # POST /steps
  # POST /steps.json
  def create
    @step = Step.new(params[:step])
    @recipe_id=@step.recipe_id

    respond_to do |format|
      if @step.save
        format.html { redirect_to recipe_path(@step.recipe_id) }
        format.json { render json: @step, status: :created, location: @step }
      else
        format.html { render action: "new" }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /steps/1
  # PUT /steps/1.json
  def update
    @step = Step.find(params[:id])
    @recipe_id=@step.recipe_id
    respond_to do |format|
      if @step.update_attributes(params[:step])
        format.html { redirect_to recipe_path(@step.recipe_id)}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps/1
  # DELETE /steps/1.json
  def destroy
    @step = Step.find(params[:id])
    @step.destroy

    respond_to do |format|
      format.html { redirect_to recipe_path(@step.recipe_id) }
      format.json { head :no_content }
    end
  end
end
