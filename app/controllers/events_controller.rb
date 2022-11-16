class EventsController < ApplicationController
  def new
    @user = params[:uni]
    render 'frontend/create'
  end

  def edit
    @user = params[:uni]
    @id = params[:id]
    render 'frontend/edit'
  end

  def info
    @user = params[:uni]

    #if logged in as this user, also render edit and delete buttons
    @authenticated = false

    @id = params[:id]
    @event_info = Event.find(@id)

    organizer = @event_info.organizer

    if organizer == @user && Authentication.logged_in?(organizer, session[:auth_token])
      @authenticated = true
    end

    @registered = !@event_info.registrations.where(user_id: User.find_by(uni: @user)).empty?

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

    event = Event.create_from_form(params)

    redirect_to :action => "info", :id => event.id, :uni => @user
  end

  def show
  end

  def update
    @user = params[:uni]
    @id = params[:id].to_i

    # event = Event.create_from_form(params)
    #UPDATE EVENT
    event = Event.find(@id)

    event.update_from_form(params)

    redirect_to :action => "info", :id => event.id, :uni => @user
  end

  def destroy
  end

end
