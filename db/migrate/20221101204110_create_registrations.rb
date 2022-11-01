class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.id :user_id
      t.id :event_id
    end
  end
end
