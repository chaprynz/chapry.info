class AddVideoaToTintuc < ActiveRecord::Migration
  def change
    add_column :tintucs, :videoa, :boolean
    add_column :tintucs, :videob, :boolean
    add_column :tintucs, :videoc, :boolean
    add_column :tintucs, :videod, :boolean
    add_column :tintucs, :videoe, :boolean
    add_column :tintucs, :videof, :boolean
    add_column :tintucs, :videog, :boolean
    add_column :tintucs, :videoh, :boolean
  end
end
