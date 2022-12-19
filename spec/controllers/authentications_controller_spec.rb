require 'rails_helper'

RSpec.describe AuthenticationsController, type: :controller do

  describe "GET #entry" do
    before :all do
      if User.find_by(:id => "1").nil?
        User.create({:id => "1", :uni => "jar2333"})
      end
    end
    it "redirects to new when auth_token session variable is nil" do
      get :entry
      expect(response).to redirect_to(:action => "new")
    end
    it "redirects correctly when auth_token is not nil" do
      @a = Authentication.new({:auth_hash => "TestHash", :auth_token => "TestAuth", :user_id => "1"})
      session[:auth_token] = "TestAuth"
      Authentication.stub(:find_by).with(auth_token: session[:auth_token]).and_return(@a)
      get :entry
      session.clear
      expect(response).to redirect_to(home_path("jar2333"))
    end
  end

  describe "GET #create" do
    it "redirects correctly to home path" do
      Authentication.stub(:verify).with("jar2333", "pswd").and_return(true)
      get :create, {:params => {:uni => "jar2333", :password => "pswd"}}
      expect(response).to redirect_to(home_path("jar2333"))
    end
    it "redirects correctly when not verified" do
      Authentication.stub(:verify).with("jar2333", "pswd").and_return(false)
      get :create, {:params => {:uni => "jar2333", :password => "pswd"}}
      expect(response).to redirect_to(:action => "new")
    end
  end

  describe "GET #new" do
    it "returns http success" do
      expect assigns(:registered)
      expect assigns(:failed_login)
      get :new
      expect(response).to render_template('frontend/login')
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to redirect_to(:action => "new")
    end
  end

end
