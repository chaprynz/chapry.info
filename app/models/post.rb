class Post < ActiveRecord::Base
  belongs_to :subcategory
  
  extend FriendlyId
	friendly_id :slug, use: [:slugged, :finders]
  
    has_attached_file :image, :styles => { :medium => "680x300>", :thumb => "170x75>" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    has_attached_file :socialshare, :styles => { :medium => "680x300>", :thumb => "170x75>" }
    validates_attachment_content_type :socialshare, :content_type => /\Aimage\/.*\Z/
end
