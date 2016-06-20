class AddHidepageToPost < ActiveRecord::Migration
  def change
    add_column :posts, :hidepage, :boolean
  end
end
