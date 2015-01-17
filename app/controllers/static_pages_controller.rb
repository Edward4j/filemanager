class StaticPagesController < ApplicationController
before_action :authenticate_user!
  def landing
    @greeting = "Hello! This is a filemanager"
  end

  def petro
    @name = 'Petro'
  end

end
