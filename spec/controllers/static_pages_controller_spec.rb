require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do
  
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

  describe "GET #petro" do
    it "respond successfully with HTTP 200 status code" do
      get :petro
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the petro template" do
      get :petro
      expect(response).to render_template("petro")
    end

    it "defines @greeting" do
      get :petro
      expect(assigns(:name)).to eq "Petro"
    end
  end

end
