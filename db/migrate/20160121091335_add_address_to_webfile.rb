class AddAddressToWebfile < ActiveRecord::Migration
  def change
    add_column :webfiles, :address, :string
  end
end
