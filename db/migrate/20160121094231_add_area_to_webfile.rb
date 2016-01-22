class AddAreaToWebfile < ActiveRecord::Migration
  def change
    add_column :webfiles, :area, :string
  end
end
