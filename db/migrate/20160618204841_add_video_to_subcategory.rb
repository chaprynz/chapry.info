class AddVideoToSubcategory < ActiveRecord::Migration
  def change
    add_column :subcategories, :video, :boolean
    add_column :subcategories, :news, :boolean
    add_column :subcategories, :vocabulary, :boolean
    add_column :subcategories, :quiz, :boolean
    add_column :subcategories, :music, :boolean
    add_column :subcategories, :grammar, :boolean
  end
end
