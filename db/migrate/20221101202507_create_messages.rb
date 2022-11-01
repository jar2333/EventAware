class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :user_id
      t.string :event_id
      t.datetime :date
      t.string :content
    end
  end
end
