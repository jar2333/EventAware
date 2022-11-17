require 'rails_helper'

describe Authentication do
    it 'test make' do
        @u = User.new({:id => 1, :uni => "jar2333"})
        User.stub(:find_by).with(uni: "jar2333").and_return(@u)
        expect(Authentication.make("jar2333", "test_password_1").user_id).to eq(1)
    end
    it 'test cannot verify' do
        @u = User.new({:id => 1, :uni => "jar2333"})
        User.stub(:find_by).with(uni: "jar2333").and_return(@u)
        Authentication.make("jar2333", "test_password")
        Authentication.verify("jar2333", "test_password_wrong").should be_nil
    end
end  