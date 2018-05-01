class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash[:success] = t "static_pages.base_title"
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find_by(params[:id])
    return if @user
    flash[:success] = t "static_pages.not_found"
    redirect_to root_path
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :email, :gender,
     :password, :password_confirmation)
  end
end
