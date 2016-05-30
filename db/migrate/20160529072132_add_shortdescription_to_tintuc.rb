class AddShortdescriptionToTintuc < ActiveRecord::Migration
  def change
    add_column :tintucs, :shortdescription, :text
  end
end
