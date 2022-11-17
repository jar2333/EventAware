require 'rails_helper'

describe Event do
    describe 'create from form' do
      it 'creates events correctly' do
        @u = User.new({:id => 1, :uni => "sa4084"})
        User.stub(:find_by_uni).with("sa4084").and_return(@u)
        params = {:uni => "sa4084", :title  => "TestEvent2", :start_date => "2022-10-16", :end_date => "2022-10-16", :start_time => "10:00:00", :end_time => "11:00:00", :description => "nothing"}
        expect((Event.create_from_form(params)).title).to eq("TestEvent2")
      end
      # it 'updates events correctly' do
      #   @u = User.new({:id => 1, :uni => "sa4084"})
      #   User.stub(:find_by_uni).with("sa4084").and_return(@u)
      #   params = {:uni => "sa4084", :title  => "TestEvent3", :start_date => "2022-10-16", :end_date => "2022-10-16", :start_time => "10:00:00", :end_time => "11:00:00", :description => "nothing"}
      #   expect((update_from_form(params)).title).to eq("TestEvent3")
      # end
    end
end  