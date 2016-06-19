class AddCodeToPost < ActiveRecord::Migration
  def change
    add_column :posts, :code, :text
  end
end
