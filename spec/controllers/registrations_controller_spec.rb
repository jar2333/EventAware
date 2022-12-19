require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do
  describe "POST #create" do
    it "correctly redirects" do
      @u = User.new({:uni => 'jar2333', :id => 1})
      User.stub(:find_by).with(uni: 'jar2333').and_return(@u)
      get :create, {:params => {:uni => "jar2333", :id => 1}}
      expect(response).to redirect_to(event_path(:uni => "jar2333", :id => 1))
    end
  end
  describe "GET #destroy" do
    it "correctly redirects" do
      @u = User.new({:uni => 'jar2333', :id => 1})
      User.stub(:find_by).with(uni: 'jar2333').and_return(@u)
      get :destroy, {:params => {:uni => "jar2333", :id => 1}}
      expect(response).to redirect_to(event_path(:uni => "jar2333", :id => 1))
    end
  end
end
