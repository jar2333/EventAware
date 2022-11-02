class CreateAuthentication < ActiveRecord::Migration[5.2]
  def change
    create_table :authentications, id: false do |t|
      t.string :user_id, primary_key: true
      t.string :auth_hash
      t.string :auth_token
    end
  end
end
