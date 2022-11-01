class CreateFollower < ActiveRecord::Migration[5.2]
  def change
    create_table :followers do |t|
      t.id :user_id
      t.id :follower_id
    end
  end
end
