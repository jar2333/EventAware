class Follower < ActiveRecord::Base

    def self.get_following(user)
        id = User.find_by(uni: user)
        Follower.where(follower_id: id).pluck(:user_id).map do |i|
          User.find(i).uni
        end
    end

    def self.get_followers(user)
        id = User.find_by(uni: user)
        Follower.where(user_id: id).pluck(:follower_id).map do |i|
            User.find(i).uni
        end
    end

    def self.follows?(user, follower)
        id = User.find_by(uni: user)
        follower_id = User.find_by(uni: user)

        return !Follower.where(user_id: id, follower_id: follower_id).empty?
    end
end