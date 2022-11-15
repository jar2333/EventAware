class EventsController < ApplicationController
  def new
    @user = params[:uni]
    render 'frontend/create'
  end

  def edit
    @user = params[:uni]
    render 'frontend/edit'
  end

  def info
    @user = params[:uni]
    #if logged in as this user, also render edit and delete buttons
    @authenticated = false

    @id = params[:id]
    @event_info = Event.find(@id)

    render 'frontend/event_info'
  end

  def chat
    @user = params[:uni]

    @id = params[:id]

    @chat = Message.where(event_id: @id)

    render 'frontend/chat'
  end

  def index
  end

  def create

    @user = params[:uni]

    title = params[:title]
    start_time = params[:start_time]
    end_time = params[:end_time]
    start_date = params[:start_date]
    end_date = params[:end_date]

    description = params[:description]

    date_posted = Time.now.utc.to_s

    event = Event.create({:title => title,
                          :description => description,
                          :user_id => User.find_by_uni(@user).id,
                          :date_posted => date_posted,
                          :start_date => start_date.to_s + " " + start_time.to_s + " UTC",
                          :end_date => end_date.to_s + " " + end_time.to_s + " UTC"}
                          )

    redirect_to :action => "info", :id => event.id, :uni => @user
  end

  def show
  end

  def update
  end

  def destroy
  end

end
