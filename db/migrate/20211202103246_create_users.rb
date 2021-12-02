class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.integer :phone
      t.float :lat
      t.float :long
      t.string :location

      t.timestamps
    end
  end
end
