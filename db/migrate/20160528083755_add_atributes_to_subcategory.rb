class AddAtributesToSubcategory < ActiveRecord::Migration
  def change
    add_column :subcategories, :a, :boolean
    add_column :subcategories, :b, :boolean
    add_column :subcategories, :c, :boolean
    add_column :subcategories, :d, :boolean
    add_column :subcategories, :e, :boolean
    add_column :subcategories, :f, :boolean
    add_column :subcategories, :g, :boolean
    add_column :subcategories, :h, :boolean
  end
end
