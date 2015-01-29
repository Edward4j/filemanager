class UsersController < ApplicationController
   before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def new
    @add_user = User.new
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end

