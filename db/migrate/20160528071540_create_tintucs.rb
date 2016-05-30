class CreateTintucs < ActiveRecord::Migration
  def change
    create_table :tintucs do |t|
      t.string :title
      t.text :content
      t.text :description
      t.text :video

      t.timestamps null: false
    end
  end
end
