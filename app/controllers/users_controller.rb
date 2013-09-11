class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user=User.new(params[:user])
    if @user.save
    # TBD add welcome flash
    redirect_to @user
    else
      render 'new' 
     end
  end
  def show
    redirect_to recipes_path(:user_id => params[:id])
  end
end
