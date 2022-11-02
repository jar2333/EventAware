class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages, id: false do |t|
      t.string :message_id, primary_key: true
      t.string :user_id
      t.string :event_id
      t.datetime :date_posted
      t.string :content
    end
  end
end
