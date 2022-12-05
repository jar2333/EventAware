class FollowersController < ApplicationController
  def index
  end

  def create
    uni = params[:uni]
    follower_uni  = params[:follower_uni]

    user_id = User.find_by(uni: uni).id
    follower_id = User.find_by(uni: follower_uni).id

    Follower.create!(user_id: user_id, follower_id: follower_id)

    redirect_to profile_path(uni)
  end

  def destroy
    uni = params[:uni]
    follower_uni  = params[:follower_uni]

    user_id = User.find_by(uni: uni).id
    follower_id = User.find_by(uni: follower_uni).id

    Follower.where(user_id: user_id, follower_id: follower_id).destroy_all

    redirect_to profile_path(uni)
  end

end
