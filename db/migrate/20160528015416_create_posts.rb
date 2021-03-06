class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.text :content
      t.text :video
      t.references :subcategory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
