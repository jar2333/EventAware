class EventsController < ApplicationController
  def new
  end

  def edit
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
  end

  def show
  end

  def update
  end

  def destroy
  end

end
