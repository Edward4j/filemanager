class FoldersController < ApplicationController
  
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


end
