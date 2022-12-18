class ApplicationController < ActionController::Base

    before_action :check_login

    private

    def check_login
    #----------------------------------------------------------------------------
    #this general piece of code can be added as precondition to every controller
    if !session[:auth_token].nil?
        token = session[:auth_token]
        authenticated_user = Authentication.get_user(token)
  
        if !authenticated_user.nil?
          @authenticated_id = authenticated_user.id 
          @authenticated_uni = authenticated_user.user.uni
          @authenticated = true
        end
      end
      if @authenticated.nil?
        @authenticated = false
      end
      #----------------------------------------------------------------------------
    end
end
