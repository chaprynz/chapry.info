class AddSocialshareToTintuc < ActiveRecord::Migration
  def self.up
    change_table :tintucs do |t|
      t.attachment :socialshare
    end
  end

  def self.down
    remove_attachment :tintucs, :socialshare
  end
end
