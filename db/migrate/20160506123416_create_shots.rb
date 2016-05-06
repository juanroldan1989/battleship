class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.integer :user_id
      t.string  :location
      t.boolean :hit,     default: false

      t.timestamps null: false
    end

    add_index :shots, :user_id
    add_index :shots, :hit
  end
end
