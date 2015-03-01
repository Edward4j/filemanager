class FoldersController < ApplicationController

  before_action :authenticate_user!

  add_breadcrumb "home", :root_path
  add_breadcrumb "folders", :folders_path

  def new
    @folder = Folder.new(parent_id: params[:parent_id], user_id: current_user.id)
  end

  def index
    @folder = Folder.new
    @folders = Folder.all
  end

  def create
    @folder = Folder.create folder_params
    redirect_to folders_path
  end

  def destroy
    @folder = Folder.find params[:id]
    @folder.delete
    redirect_to folders_path
  end

  def show
    @folders = Folder.all
  end

  private

    def folder_params
      params.require(:folder).permit(:name, :parent_id, :user_id)
    end

end
