class FoldersController < ApplicationController
<<<<<<< HEAD
  
def new
  @folder = Folder.new(:parent_id => params[:parent_id])
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
 
 private 

 def folder_params
 	params.require(:folder).permit(:name, :parent_id)
 end

=======

  before_action :authenticate_user!
  
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
 
  private 

  def folder_params
    params.require(:folder).permit(:name, :parent_id, :user_id)
  end
>>>>>>> 51fd3448e66c7187906451b264cc4f71892c942f

end
