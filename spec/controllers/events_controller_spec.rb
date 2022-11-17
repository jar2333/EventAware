require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  describe "POST #create" do
    it "correctly redirects" do
      @u = User.new({:uni => 'jar2333', :id => 1})
      User.stub(:find_by_uni).with('jar2333').and_return(@u)
      get :create, {:params => {:uni => "jar2333", :title => "TestCreateEvent", :description => "TestCreateDescription", :date_posted => "2022-10-22 10:00:00", :start_date => "2022-10-25", :end_date => "2022-10-25", :start_time => "10:00:00", :end_time => " 12:00:00"}}
      expect(response).to redirect_to(event_path(:uni => "jar2333", :id => Event.count))
    end
  end

  describe "GET #chat" do
    it "assigns to chat" do
      chat_path(:id => 1, :uni => "jar2333")
      expect assigns(:chat)
    end
  end

  describe "GET #info" do
    before :all do
      @e = Event.new({:id => 1, :user_id => 1, :title => "TestCreateEvent", :description => "TestEventDescription", :date_posted => "2022-10-22 10:00:00", :start_date => "2022-10-25 10:00:00", :end_date => "2022-10-25 12:00:00"})
      if User.find_by("uni" => "jar2333").nil?
        User.create({:uni => "jar2333", :id => 1})
      end
      if Authentication.find_by("user_id" => 1).nil?
        Authentication.create({:auth_hash => "TestHash", :auth_token => "TestAuth", :user_id => 1})
      end
    end
    it "assigns to event_info" do
      Event.stub(:find).with("1").and_return(@e)
      get :info, {:params => {:uni => "jar2333", :id => 1}}
      expect(assigns(:event_info)).to eq(@e)
      expect(assigns(:id)).to eq("1")
      expect(assigns(:authenticated)).to eq(false)
      expect(response).to render_template 'frontend/event_info'
    end
    it "logged in user" do
      Event.stub(:find).with("1").and_return(@e)
      Authentication.stub(:logged_in?).with("jar2333", nil).and_return(true)
      get :info, {:params => {:uni => "jar2333", :id => 1}}
      # expect(assigns(:event_info)).to eq(@e)
      # expect(assigns(:id)).to eq("1")
      expect(assigns(:authenticated)).to eq(true)
      expect(response).to render_template 'frontend/event_info'
    end
  end

  describe "GET #new" do
    it "fetches the user by uni" do
      get :new, {:params => {:uni => "jar2333"}}
      expect(assigns(:user)).to eq "jar2333"
      expect(response).to render_template 'frontend/create'
    end
  end

  describe "GET #edit" do
    it "fetches the user by uni" do
      get :edit, {:params => {:id => 1, :uni => "jar2333"}}
      expect(assigns(:user)).to eq "jar2333"
      expect(assigns(:id)).to eq("1")
      expect(response).to render_template 'frontend/edit'
    end
  end

  describe "GET #update" do
    before :all do
      if User.find_by("uni" => "jar2333").nil?
        User.create({:uni => "jar2333", :id => 1})
      end
      if Event.find_by_user_id(1).nil?
        Event.create({:id => 1, :user_id => 1, :title => "TestCreateEvent", :description => "TestEventDescription", :date_posted => "2022-10-22 10:00:00", :start_date => "2022-10-25 10:00:00", :end_date => "2022-10-25 12:00:00"})
      end
    end
    it "updates correctly" do
      get :update, {:params => {:id => 1, :uni => "jar2333"}}
      expect(response).to redirect_to(:action => "info", :id => 1, :uni => 'jar2333')
    end
  end

  # describe "GET #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
