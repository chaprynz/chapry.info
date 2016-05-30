class AddAttachmentLogoToSubcategories < ActiveRecord::Migration
  def self.up
    change_table :subcategories do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :subcategories, :logo
  end
end
