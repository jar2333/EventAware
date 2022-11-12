class AuthenticationsController < ApplicationController
  def create
    uni = params[:uni]
    password = params[:password]

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
  end
end
