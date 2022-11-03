class MessagesController < ApplicationController
  def index
  end

  def create
    content     = params[:msg]
    event_id    = params[:id]
    user        = params[:uni]
    date_posted = Time.now.utc.to_s

    Message.create!({:message_id => event_id + user + date_posted,
                     :content => content,
                     :event_id => event_id,
                     :user_id => user,
                     :date_posted => date_posted})

    redirect_back fallback_location: "/user/#{user}/event/#{event_id}/chat"
  end
end
