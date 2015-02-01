class StaticPagesController < ApplicationController

  before_action :authenticate_user!

  def landing
    @greeting = "Hello! This is a filemanager"
  end

  def tools
    @language = 'Ruby 2.2'
  end

  def contacts
 	  @name = 'Contacts'
  end

  def about_us
    @developers = "Our Team:"
  end

  def faq
    @answers = "This is F.A.Q."
  end

  def folders
 	@name = 'Contacts'
  end

end
