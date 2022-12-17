class AuthenticationsController < ApplicationController

  def entry
    if session[:auth_token].nil?
      redirect_to :action => "new"
    else
      auth_token = session[:auth_token]
      user = Authentication.find_by(auth_token: auth_token)

      if !user.nil?
        uni = Authentication.find_by(auth_token: auth_token).user.uni
        redirect_to home_path(uni)
      else
        redirect_to :action => "new"
      end
    end
  end

  def create
    uni = params[:uni]
    password = params[:password]

    @registered = flash[:registered]

    auth_token = Authentication.verify(uni, password)
    if auth_token
      session[:auth_token] = auth_token
      redirect_to home_path(uni)
    else
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
