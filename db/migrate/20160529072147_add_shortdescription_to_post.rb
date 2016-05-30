class AddShortdescriptionToPost < ActiveRecord::Migration
  def change
    add_column :posts, :shortdescription, :text
  end
end
