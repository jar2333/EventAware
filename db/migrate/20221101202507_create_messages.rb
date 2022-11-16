class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :user
      t.references :event
      t.datetime :date_posted
      t.string :content
    end
  end
end
