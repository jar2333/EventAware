class MessagesController < ApplicationController
  def index
  end

  def create
    content     = params[:msg]
    event_id    = params[:id].to_i
    username    = params[:uni]
    date_posted = Time.now.utc.to_s

    user = User.find_by(uni: username)
    puts user


    Message.create!({:content => content,
                     :event_id => event_id,
                     :user_id => user.id,

                     :date_posted => date_posted})
    
    redirect_back fallback_location: "/user/#{user}/event/#{event_id}/chat"
  end
end
