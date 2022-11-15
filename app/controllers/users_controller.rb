class UsersController < ApplicationController
  def home
    @user = params[:uni]

    if params[:search].nil?
      @events = Event.all
    else
      search = params[:search]
      @events = Event.where('title LIKE ?', "%#{search}%").all
    end
    render 'frontend/home'
  end

  def profile
    @user = params[:uni]

    @name = User.find_by(uni: @user).name
    @email = @user + "@columbia.edu"

    @myevents = User.find_by(uni: @user).events
    # @attending_events = Event.join(:registration)
    @attending_events = []
    render 'frontend/profile'
  end

  # def following
  #   @user = params[:uni]

  #   @following = Follower.where(follower_id: @user).pluck(:user_id)
  #   render 'frontend/following'
  # end

  # def followers
  #   @user = params[:uni]

  #   @followers = Follower.where(user_id: @user).pluck(:follower_id)
  #   render 'frontend/follower'
  # end

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
