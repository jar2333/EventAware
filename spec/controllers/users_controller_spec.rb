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
  end

  describe "GET #following" do
    it "sets variables and renders correct template" do
      @u = User.new({:uni => 'jar2333', :id => '1', :uni => "jar2333", :name => "TestUser"})
      User.stub(:find_by).with(uni: "jar2333").and_return(@u)
      get :following, {:params => {:uni => "jar2333"}}
      expect(response).to render_template("frontend/following")
    end
  end

  describe "GET #following" do
    it "sets variables and renders correct template" do
      @u = User.new({:uni => 'jar2333', :id => '1', :uni => "jar2333", :name => "TestUser"})
      User.stub(:find_by).with(uni: "jar2333").and_return(@u)
      get :followers, {:params => {:uni => "jar2333"}}
      expect(response).to render_template("frontend/follower")
    end
  end
end
