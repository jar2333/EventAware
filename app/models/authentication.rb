require 'digest'
require 'securerandom'

class Authentication < ActiveRecord::Base

    belongs_to :user

    def self.make(username, password)
        auth_hash = Digest::MD5.hexdigest password
        auth_token = SecureRandom.uuid.to_s
        user = User.find_by(uni: username)
        create!(user_id: user.id, auth_hash: auth_hash, auth_token: auth_token)
    end

    def self.verify(username, password)
        auth_hash = Digest::MD5.hexdigest password

        user = User.find_by(uni: username)

        if user.nil?
            return nil
        end

        auth = user.authentication

        if auth.auth_hash == auth_hash
            return auth.auth_token
        else
            return nil
        end
    end

    def self.logged_in?(username, session_token)
       user_token = User.find_by(uni: username).authentication.auth_token

       session_token == user_token
    end

end