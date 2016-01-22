class AddCategoryToWebfile < ActiveRecord::Migration
  def change
    add_column :webfiles, :category, :string
  end
end
