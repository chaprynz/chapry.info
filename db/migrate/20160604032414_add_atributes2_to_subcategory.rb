class AddAtributes2ToSubcategory < ActiveRecord::Migration
  def change
    add_column :subcategories, :area1, :boolean
    add_column :subcategories, :area2, :boolean
    add_column :subcategories, :area3, :boolean
    add_column :subcategories, :area4, :boolean
    add_column :subcategories, :area5, :boolean
    add_column :subcategories, :area6, :boolean
  end
end
