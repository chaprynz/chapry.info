class AddAtributesToTintuc < ActiveRecord::Migration
  def change
    add_column :tintucs, :a, :boolean
    add_column :tintucs, :b, :boolean
    add_column :tintucs, :c, :boolean
    add_column :tintucs, :d, :boolean
    add_column :tintucs, :e, :boolean
    add_column :tintucs, :f, :boolean
    add_column :tintucs, :g, :boolean
    add_column :tintucs, :h, :boolean
  end
end
