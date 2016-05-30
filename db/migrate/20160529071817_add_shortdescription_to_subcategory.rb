class AddShortdescriptionToSubcategory < ActiveRecord::Migration
  def change
    add_column :subcategories, :shortdescription, :text
  end
end
