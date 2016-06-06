class AddAtributes3ToSubcategory < ActiveRecord::Migration
  def change
    add_column :subcategories, :area1header, :boolean
    add_column :subcategories, :area2header, :boolean
    add_column :subcategories, :area3header, :boolean
    add_column :subcategories, :area4header, :boolean
    add_column :subcategories, :area5header, :boolean
    add_column :subcategories, :area6header, :boolean
    add_column :subcategories, :area7header, :boolean
  end
end
