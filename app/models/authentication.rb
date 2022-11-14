class Authentication < ActiveRecord::Base
    has_one :user
    belongs_to :user
end