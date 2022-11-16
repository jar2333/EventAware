require 'rails_helper'

RSpec.describe MessagesController, type: :controller do

  describe "POST #CREATE" do
    before(:each) do
      # if Event.where(:id => "1").empty?
      if User.find_by(:id => "1").nil?
        User.create({:id => "1", :uni => "jar2333"})
      end
      if Event.find_by(:id => "1").nil?
        Event.create({:user_id => "1", :title => "TestMessageEvent", :description => "TestEventDescription", :date_posted => "2022-10-22 10:00:00", :start_date => "2022-10-25 10:00:00", :end_date => "2022-10-25 12:00:00"})
      end
    end
    it "cannot create a message for an event that does not exist" do
      # @u = User.new({:uni => 'jar2333', :id => '1'})
      # User.stub(:find_by_uni).with('jar2333').and_return(@u)
      post :create, {:params => {:content => "TestMessage", :event_id => "1", :uni => "jar2333"}}
      # expect(response).to redirect_back(fallback_location: "/user/jar2333/event/1/chat")
      expect(Message).to receive(:create!)
      expect(User).to receive(:find_by_uni).with('jar2333')
      # expect(response).to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  # describe "GET #create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to re(:success)
  #   end
  # end

end
