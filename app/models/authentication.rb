require 'digest'
require 'securerandom'

class Authentication < ActiveRecord::Base

    def self.make(username, password)
        auth_hash = Digest::MD5.hexdigest password
        auth_token = SecureRandom.uuid.to_s
        create!(user_id: username, auth_hash: auth_hash, auth_token: auth_token)
    end

    def self.verify(username, password)
        auth_hash = Digest::MD5.hexdigest password
        if where(user_id: username, auth_hash: auth_hash).exists?
            return find(username).auth_token
        else
            return nil
        end
    end

    def self.get_user(auth_token)
        return where(auth_token: auth_token).first
    end

end