class CreateFollower < ActiveRecord::Migration[5.2]
  def change
    create_table :followers do |t|
      t.string :user_id
      t.string :follower_id
    end
  end
end
