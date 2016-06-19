class AddAtributesToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :a, :boolean
    add_column :categories, :b, :boolean
    add_column :categories, :c, :boolean
    add_column :categories, :d, :boolean
    add_column :categories, :e, :boolean
    add_column :categories, :f, :boolean
    add_column :categories, :g, :boolean
    add_column :categories, :h, :boolean
  end
end
