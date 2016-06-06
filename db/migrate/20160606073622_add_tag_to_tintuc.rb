class AddTagToTintuc < ActiveRecord::Migration
  def change
    add_column :tintucs, :tag, :integer
  end
end
