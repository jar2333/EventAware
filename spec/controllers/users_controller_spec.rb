require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #home" do
    it "sets variables" do
      get :home, {:params => {:uni => "jar2333"}}
      expect(assigns(:user)).to eql("jar2333")
      expect(assigns(:events))
    end
    it "renders the home page" do
      get :home, {:params => {:uni => "jar2333", :search => "Halloween"}}
      expect(assigns(:user)).to eql("jar2333")
      expect(response).to render_template("frontend/home")
    end
  end

  describe "GET #profile" do
    it "sets variables and renders correct template" do
      @u = User.new({:uni => 'jar2333', :id => '1', :uni => "jar2333", :name => "TestUser"})
      User.stub(:find_by).with(uni: "jar2333").and_return(@u)
      get :profile, {:params => {:uni => "jar2333"}}
      expect(assigns(:user)).to eql("jar2333")
      expect(response).to render_template("frontend/profile")
    end
    # it "renders the home page" do
    #   get :home, {:params => {:uni => "jar2333", :search => "Halloween"}}
    #   expect(assigns(:user)).to eql("jar2333")
      
    # end
  end
  # describe "GET #profile" do
  #   it "gives profile page" do
  #     get :profile, :uni => "jar2333"
  #     expect(response).to render_template("profile")
  #   end
  # end

  # describe "GET #following" do
  #   it "should return users I follow" do
  #     get :following, :uni => "jar2333"
  #     expect(response).to render_template("following")
  #   end
  # end

  # describe "GET #followers" do
  #   it "should return my follow" do
  #     get :following, :uni => "jar2333"
  #     expect(response).to render_template("followers")
  # end
  # end

  # describe "GET #new" do
  #   it "returns http success" do
  #     get :new
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #edit" do
  #   it "returns http success" do
  #     get :edit
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #update" do
  #   it "returns http success" do
  #     get :update
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
