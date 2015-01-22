class StaticPagesController < ApplicationController
  
  before_action :authenticate_user!
  
  def landing
    @greeting = "Hello! This is a filemanager"
  end

  def tools
    @language = 'Ruby 2.2'
  end

end
