class AddVideoToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :video, :boolean
    add_column :categories, :news, :boolean
    add_column :categories, :quiz, :boolean
    add_column :categories, :music, :boolean
  end
end
