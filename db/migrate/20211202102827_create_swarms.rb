class CreateSwarms < ActiveRecord::Migration[5.2]
  def change
    create_table :swarms do |t|
      t.float :lat
      t.float :long
      t.string :address
      t.integer :reporter_id
      t.boolean :collected
      t.text :description
      t.integer :collector_id

      t.timestamps
    end
  end
end
