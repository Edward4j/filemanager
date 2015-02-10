require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  
  before do
    sign_in User.create!(email: 'ooo2@gmail.com', password: 'password', name: 'Test User')
  end
  
  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
