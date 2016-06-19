class AddVideoaToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :videoa, :boolean
    add_column :categories, :videob, :boolean
    add_column :categories, :videoc, :boolean
    add_column :categories, :videod, :boolean
    add_column :categories, :videoe, :boolean
    add_column :categories, :videof, :boolean
    add_column :categories, :videog, :boolean
    add_column :categories, :videoh, :boolean
  end
end
