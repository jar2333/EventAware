class UsersController < ApplicationController
  def home
    @user = params[:uni]

    if params[:search].nil?
      @events = Event.all
    else
      search = params[:search]
      @events = Event.where('LOWER (title) LIKE ?', "%#{search}%").all
    end
    render 'frontend/home'
  end

  def profile
    @user = params[:uni]
    user = User.find_by(uni: @user)

    #----------------------------------------------------------------------------
    #this general piece of code can be added as precondition to every controller
    if !session[:auth_token].nil?
      token = session[:auth_token]
      authenticated_user = Authentication.get_user(token)

      if !authenticated_user.nil?
        id = authenticated_user.id 
        @authenticated_uni = authenticated_user.user.uni
        @authenticated = true

        #method specific assignment
        @following = !Follower.find_by(user_id: user.id, follower_id: id).nil?
      end
    end
    if @authenticated.nil?
      @authenticated = false
    end
    #----------------------------------------------------------------------------
    

    @name = user.name
    @email = @user + "@columbia.edu"

    @myevents = user.events

    # @attending_events = user.registrations
    @attending_events = []

    render 'frontend/profile'
  end

  def following
    @user = params[:uni]

    id = User.find_by(uni: @user)

    @following = Follower.where(follower_id: id).pluck(:user_id).map do |i|
      User.find(i).uni
    end

    render 'frontend/following'
  end

  def followers
    @user = params[:uni]

    id = User.find_by(uni: @user)

    @followers = Follower.where(user_id: id).pluck(:follower_id).map do |i|
      User.find(i).uni
    end

    render 'frontend/follower'
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
