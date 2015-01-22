require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do
  before do
    sign_in User.create!(email: 'ooo2@gmail.com', password: 'password', name: 'Test User')
  end

  describe "GET #langing" do
    it "responds successfully with an HTTP 200 status code" do
      get :landing
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the landing template" do
      get :landing
      expect(response).to render_template("landing")
    end

    it "defines @greeting" do
      get :landing
      expect(assigns(:greeting)).to eq "Hello! This is a filemanager"
    end
  end

  describe "GET #tools" do
    it "respond successfully with HTTP 200 status code" do
      get :tools
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the tools template" do
      get :tools
      expect(response).to render_template("tools")
    end

    it "defines @greeting" do
      get :tools
      expect(assigns(:language)).to eq "Ruby"
    end
  end

end
