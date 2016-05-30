class AddRToSubcategory < ActiveRecord::Migration
  def change
    add_column :subcategories, :r, :boolean
  end
end
