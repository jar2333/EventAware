class Event < ActiveRecord::Base
    has_many :registrations
    has_many :messages
    has_many :users, through: :registrations
    # has_many :users, through: :messages

    has_one :users

    def organizer
        User.find(user_id).uni
    end

    def self.create_from_form(params)
        user = params[:uni]
        title = params[:title]
        start_time = params[:start_time]
        end_time = params[:end_time]
        start_date = params[:start_date]
        end_date = params[:end_date]

        description = params[:description]
    
        date_posted = Time.now.utc.to_s
    
        return Event.create({:title => title,
                            :description => description,
                            :user_id => User.find_by_uni(user).id,
                            :date_posted => date_posted,
                            :start_date => (start_date + " " + start_time).to_s,
                            :end_date => (end_date + " " + end_time).to_s}
                            )
    end

    def update_from_form(params)
        user = params[:uni]
        title = params[:title]
        start_time = params[:start_time]
        end_time = params[:end_time]
        start_date = params[:start_date]
        end_date = params[:end_date]
    
        description = params[:description]
    
        date_posted = Time.now.utc.to_s
    
        return update({
            :title => title,
            :description => description,
            :user_id => User.find_by_uni(user).id,
            :date_posted => date_posted,
            :start_date => start_date.to_s + " " + start_time.to_s,
            :end_date => end_date.to_s + " " + end_time.to_s
            })
    end
end