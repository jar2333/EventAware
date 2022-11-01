class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events, id: false do |t|
      t.string :event_id
      t.string :organizer
      t.string :title
      t.string :description
      t.datetime :date_posted
      t.datetime :start_date
      t.datetime :end_date
    end
  end
end
