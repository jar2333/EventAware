class AuthenticationsController < ApplicationController

  def entry
    if session[:auth_token].nil?
      redirect_to :action => "new"
    else
      token = session[:auth_token]
      uni = Authentication.get_user(token)
      redirect_to home_path(uni)
    end
  end

  def create
    uni = params[:uni]
    password = params[:password]

    auth_token = Authentication.verify(uni, password)
    if auth_token
      puts "VERIFIED"
      session[:auth_token] = auth_token
      redirect_to home_path(uni)
    else
      puts "REJECTED"
      redirect_to :action => "new"
    end
  end

  def new
    render 'frontend/login'
  end

  def destroy
    session.clear
    redirect_to :action => "new"
  end
end
