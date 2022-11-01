class CreateFollower < ActiveRecord::Migration[5.2]
  def change
    create_table :followers, id: false do |t|
      t.string :user_id
      t.string :follower_id
    end
  end
end
