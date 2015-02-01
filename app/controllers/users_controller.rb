class UsersController < ApplicationController
   before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
    
    def new
  @folder = Folder.new(:parent_id => params[:parent_id])
end
  end

end

