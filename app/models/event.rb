class Event < ActiveRecord::Base
    has_many :registrations
    has_many :messages
    has_and_belongs_to_many :users #each event can be organized by several users
    has_many :users, through: :registrations
    has_many :users, through: :messages

    def organizer
        user_id
    end
end