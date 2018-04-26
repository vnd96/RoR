class UsersController < ApplicationController
 
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = t "static_pages.base_title"
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :email, :gender,
     :password, :password_confirmation)
  end
end
