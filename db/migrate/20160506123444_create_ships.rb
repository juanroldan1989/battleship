class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.integer :user_id
      t.string  :title
      t.text    :location,       array: true, default: []
      t.text    :shots_received, array: true, default: []
      t.integer :size

      t.timestamps null: false
    end

    add_index :ships, :user_id
    add_index :ships, :title
  end
end
