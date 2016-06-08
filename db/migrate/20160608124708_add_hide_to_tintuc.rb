class AddHideToTintuc < ActiveRecord::Migration
  def change
    add_column :tintucs, :hide, :boolean
  end
end
