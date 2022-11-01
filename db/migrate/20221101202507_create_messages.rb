class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages, id: false do |t|
      t.string :message_id
      t.string :user_id
      t.string :event_id
      t.datetime :date
      t.string :content
    end
  end
end
