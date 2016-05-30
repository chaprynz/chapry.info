class AddShortdescriptionToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :shortdescription, :text
  end
end
