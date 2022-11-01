class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations, id: false do |t|
      t.string :user_id
      t.string :event_id
    end
  end
end
