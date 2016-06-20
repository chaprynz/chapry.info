class AddHidepageToTintuc < ActiveRecord::Migration
  def change
    add_column :tintucs, :hidepage, :boolean
  end
end
