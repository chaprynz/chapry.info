class AddHideToPost < ActiveRecord::Migration
  def change
    add_column :posts, :hide, :boolean
  end
end
