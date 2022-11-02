class UsersController < ApplicationController
  def home
    render 'frontend/index'
  end

  def profile
    render 'frontend/profile'
  end

  def following
    render 'frontend/following'
  end

  def followers
    render 'frontend/followers'
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
