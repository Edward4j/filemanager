class StaticPagesController < ApplicationController

  def landing
    @greeting = "Hello! This is a filemanager"
  end

  def petro
    @name = 'Petro'
  end

end
