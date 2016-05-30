class Subcategory < ActiveRecord::Base
  belongs_to :category
   has_many :posts
    
    has_attached_file :image, :styles => { :medium => "680x300>", :thumb => "170x75>" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    
     has_attached_file :logo, :styles => { :medium => "680x300>", :thumb => "170x75>" }
    validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
