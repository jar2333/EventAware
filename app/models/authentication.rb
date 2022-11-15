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

        auth = User.find_by(uni: username).authentication

        if auth.auth_hash == auth_hash
            return auth.auth_token
        else
            return nil
        end
    end

end