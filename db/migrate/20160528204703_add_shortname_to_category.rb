class AddShortnameToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :shortname, :string
  end
end
