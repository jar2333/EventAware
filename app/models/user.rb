class User < ActiveRecord::Base
    has_many :registrations
    has_many :messages
    has_and_belongs_to_many :events #each user can organize several events
    has_many :events, through: :registrations
    has_many :events, through: :messages
    belongs_to :authentication
end