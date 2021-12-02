class AddCollectorInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :collection_radius, :integer
    add_column :users, :address, :text
    add_column :users, :description, :text
    add_column :users, :website, :string
  end
end
