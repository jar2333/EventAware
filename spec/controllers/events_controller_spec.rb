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
    it "returns http success" do
      post :create, {:event_id => "1", :organizer => "trj2122", :title => "TestCreateEvent", :description => "TestCreateDescription", :date_posted => "2022-10-22 10:00:00", :start_date => "2022-10-25 10:00:00", :end_date => "2022-10-25 12:00:00"}
      expect(response).to redirect_to(root_url + "events/" + 1)
    end
  end

  # describe "GET #show" do
  #   before :all do
  #     @e = Event.create(:event_id => "1", :organizer => "trj2122", :title => "TestCreateEvent", :description => "TestCreateDescription", :date_posted => "2022-10-22 10:00:00", :start_date => "2022-10-25 10:00:00", :end_date => "2022-10-25 12:00:00")
  #   end
  #   it "visit event page" do
  #     get :show, :event_id => @e.event_id
  #     expect(response).to render_template('event_info')
  #   end
  # end

  # describe "GET #edit" do
  #   before :all do
  #     @e = Event.create(:event_id => "1", :organizer => "trj2122", :title => "TestCreateEvent", :description => "TestCreateDescription", :date_posted => "2022-10-22 10:00:00", :start_date => "2022-10-25 10:00:00", :end_date => "2022-10-25 12:00:00")
  #   end
  #   it "visit edit page" do
  #     get :edit, :event_id => @e.event_id
  #     expect(response).to render_template('edit')
  #   end
  # end

  describe "GET #chat" do
    before :all do
      @e = Event.create(:event_id => "1", :organizer => "trj2122", :title => "TestCreateEvent", :description => "TestCreateDescription", :date_posted => "2022-10-22 10:00:00", :start_date => "2022-10-25 10:00:00", :end_date => "2022-10-25 12:00:00")
    end
    it "visit chat page" do
      # Event.stub(:event_info).with("1").and_return(@e)
      get :chat, :event_id => @e.event_id
      expect(assigns(:event_info)).to eql(@e)
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
