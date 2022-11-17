# require 'rails_helper'

# RSpec.describe MessagesController, type: :controller do

#   describe "POST #CREATE" do
#     before(:each) do
#       if User.find_by(:id => 1).nil?
#         User.create({:id => 1, :uni => "jar2333"})
#       end
#       if Event.where(:id => 1).empty? || Event.where(:id => 1).nil?
#         Event.create({:id => 1, :user_id => 1, :title => "TestMessageEvent", :description => "TestEventDescription", :date_posted => "2022-10-22 10:00:00", :start_date => "2022-10-25 10:00:00", :end_date => "2022-10-25 12:00:00"})
#       end
#     end
#     it "cannot create a message for an event that does not exist" do
#       post :create, {:params => {:content => "TestMessage", :event_id => @e.id, :uni => "jar2333"}}
#       expect(Message).to receive(:create!)
#       expect(User).to receive(:find_by_uni).with('jar2333')
#     end
#   end
# end