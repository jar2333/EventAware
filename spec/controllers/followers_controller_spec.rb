require 'rails_helper'

RSpec.describe FollowersController, type: :controller do

  describe "GET #CREATE and #destroy" do
    before :all do
      if User.find_by("uni" => "jar2333").nil?
        User.create({:uni => "jar2333", :id => 1})
      end
      if User.find_by("uni" => "sa4084").nil?
        User.create({:uni => "sa4084", :id => 2})
      end
    end
    it "redirects correctly in #CREATE" do
      get :create, {:params => {:uni => "jar2333", :follower_uni => "sa4084"}}
      expect(response).to redirect_to(profile_path(:uni => "jar2333"))
    end
    it "redirects correctly in #DESTROY" do
      get :destroy, {:params => {:uni => "jar2333", :follower_uni => "sa4084"}}
      expect(response).to redirect_to(profile_path(:uni => "jar2333"))
    end
  end

end
