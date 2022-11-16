class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :uni
    end

    add_index :users, [:uni], unique: true
  end
end
