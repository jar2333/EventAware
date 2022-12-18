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

    auth_token = Authentication.verify(uni, password)
    if auth_token
      session[:auth_token] = auth_token
      redirect_to home_path(uni)
    else
      flash[:failed_login] = true
      redirect_to :action => "new"
    end
  end

  def new
    @registered = flash[:registered]
    @failed_login = flash[:failed_login]
    render 'frontend/login'
  end

  def destroy
    session.clear
    redirect_to :action => "new"
  end
end
