class CreateAuthentication < ActiveRecord::Migration[5.2]
  def change
    create_table :authentications do |t|
      t.references :user
      t.string :auth_hash
      t.string :auth_token
    end
  end
end
