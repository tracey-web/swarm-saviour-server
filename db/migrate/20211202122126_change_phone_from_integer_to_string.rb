class ChangePhoneFromIntegerToString < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :phone, :string
  end
  def down
  end
end
