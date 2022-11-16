class RegistrationsController < ApplicationController

    def create
        uni = params[:uni]
        id  = params[:id]

        user_id = User.find_by(uni: uni).id

        Registration.create!(user_id: user_id, event_id: id)

        redirect_to event_path(uni, id)
    end

    def destroy
        uni = params[:uni]
        id  = params[:id]

        user_id = User.find_by(uni: uni).id

        Registration.where(user_id: user_id, event_id: id).destroy_all

        redirect_to event_path(uni, id)
    end

end
