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
      expect(assigns(:language)).to eq "Ruby 2.2"
    end
  end

  describe "GET #contacts" do
    it "respond successfully with HTTP 200 status code" do
     get :contacts
     expect(response).to be_success
     expect(response).to have_http_status(200)
   end

   it "renders the contacts template" do
      get :contacts
      expect(response).to render_template("contacts")
    end

    it "defines @greeting" do
      get :contacts
      expect(assigns(:name)).to eq "Contacts"
    end
  end

  describe "GET #about_us" do
    it "respond succeessfully with HTTP 200 status code" do
      get :about_us
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the about_us template" do
      get :about_us
      expect(response).to render_template("about_us")
    end

    it "defines @developers" do
      get :about_us
      expect(assigns(:developers)).to eq "Our Team:"
    end
  end

  describe "GET #faq" do
    it "respond successfully with HTTP 200 status code" do
      get :faq
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

     it "renders the faq template" do
      get :faq
      expect(response).to render_template("faq")
    end

    it "defines @answers" do
      get :faq
      expect(assigns(:answers)).to eq "This is F.A.Q."
    end
  end

end
