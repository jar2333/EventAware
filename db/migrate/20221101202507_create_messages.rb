class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :user_id
      t.references :event_id
      t.datetime :date_posted
      t.string :content
    end
  end
end
