require 'rails_helper'

RSpec.describe EventsController, type: :controller do

  # describe "GET #index" do
  #   it "returns http success" do
  #     get :index
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #new" do
  #   it "returns http success" do
  #     get :new
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  describe "POST #create" do
    # if Event.where(:user_id => "1").empty?
    #   Event.create({:user_id => "1", :title => "TestEventChat", :description => "TestEventDescription", :date_posted => "2022-10-22 10:00:00", :start_date => "2022-10-25 10:00:00", :end_date => "2022-10-25 12:00:00"})
    # end
    # before(:each) do
    #   @e = Event.new({:user_id => "jar2333", :title => "TestCreateEvent", :description => "TestCreateDescription", :date_posted => "2022-10-22 10:00:00", :start_date => "2022-10-25 10:00:00", :end_date => "2022-10-25 12:00:00"})
    # end
    it "correctly redirects" do
      @u = User.new({:uni => 'jar2333', :id => '1'})
      User.stub(:find_by_uni).with('jar2333').and_return(@u)
      get :create, {:params => {:uni => "jar2333", :title => "TestCreateEvent", :description => "TestCreateDescription", :date_posted => "2022-10-22 10:00:00", :start_date => "2022-10-25 10:00:00", :end_date => "2022-10-25 12:00:00"}}
      expect(response).to redirect_to(event_path(:uni => "jar2333", :id => "1"))
    end
  end

  describe "GET #chat" do
    it "assigns to chat" do
      chat_path(:id => "1", :uni => "jar2333")
      expect assigns(:chat)
    end
  end

  describe "GET #info" do
    before :all do
      @e = Event.new({:id => "1", :user_id => "1", :title => "TestCreateEvent", :description => "TestEventDescription", :date_posted => "2022-10-22 10:00:00", :start_date => "2022-10-25 10:00:00", :end_date => "2022-10-25 12:00:00"})
    end
    it "assigns to event_info" do
      Event.stub(:find).with("1").and_return(@e)
      get :info, {:params => {:uni => "jar2333", :id => "1"}}
      expect(assigns(:event_info)).to eq(@e)
      expect(assigns(:id)).to eq("1")
      expect(assigns(:authenticated)).to eq(false)
      expect(response).to render_template 'frontend/event_info'
    end
  end

  describe "GET #new" do
    it "fetches the user by uni" do
      get :new, {:params => {:uni => "jar2333"}}
      expect assigns(:user)
      expect(response).to render_template 'frontend/create'
    end
  end

  describe "GET #edit" do
    it "fetches the user by uni" do
      get :edit, {:params => {:id => "1", :uni => "jar2333"}}
      expect assigns(:user)
      expect(response).to render_template 'frontend/edit'
    end
  end

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
