class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: false do |t|
      t.string :user_id
      t.string :name
      t.string :uni
    end
  end
end
