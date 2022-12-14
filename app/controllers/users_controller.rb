class UsersController < ApplicationController
  def home
    @user = params[:uni]

    if params[:search].nil?
      @events = Event.all
    else
      search = params[:search]
      @events = Event.where('LOWER (title) LIKE ?', "%#{search}%").all
    end

    @events = @events.filter_by_date

    render 'frontend/home'
  end

  def profile
    @user = params[:uni]
    user = User.find_by(uni: @user)

    if @authenticated
      id = @authenticated_id
      @following = !Follower.find_by(user_id: user.id, follower_id: id).nil?
    end

    @name = user.name
    @email = @user + "@columbia.edu"

    @myevents = Event.where(user_id: user.id).filter_by_date

    @attending_events = Registration.joins(:event).where(user_id: user.id).where("end_date >= ?", Date.today).pluck(:event_id).map {|i|
      Event.find(i)
    }

    render 'frontend/profile'
  end

  def following
    @user = params[:uni]

    @following = Follower.get_following(@user)

    render 'frontend/following'
  end

  def followers
    @user = params[:uni]

    id = User.find_by(uni: @user)

    @followers = Follower.get_followers(@user)

    render 'frontend/follower'
  end

  def new
    render 'frontend/register'
  end

  def edit
  end

  def create
    username = params[:uni]
    name = params[:name]
    password = params[:password]

    User.create!(name: name, uni: username)
    Authentication.make(username, password)

    flash[:registered] = true

    redirect_to login_path
  end

  def update
  end

  def destroy
  end
end
