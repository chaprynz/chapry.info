class AddCodeToTintuc < ActiveRecord::Migration
  def change
    add_column :tintucs, :code, :text
  end
end
