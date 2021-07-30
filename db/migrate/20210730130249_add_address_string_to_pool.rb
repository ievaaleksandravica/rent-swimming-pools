class AddAddressStringToPool < ActiveRecord::Migration[6.0]
  def change
    add_column :pools, :address, :string
  end
end
