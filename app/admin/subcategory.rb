ActiveAdmin.register Subcategory do
    permit_params :name, :image, :logo, :description, :category_id, :slug, :tag,
    :video, :news, :vocabulary, :quiz, :music, :grammar
    
    
    sortable tree: false,
						sorting_attribute: :tag
    
   index :as => :sortable do
		label :name
		
		actions
	end
    
    index do 
		column :name
		column :image
		column :logo
		column :id
		actions
	end
    show do |t|
		attributes_table do
			row :name
		end
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :category
			f.input :name
			f.input :slug
			f.input :description
			f.input :image, hint: f.subcategory.image? ? image_tag(subcategory.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")	
			f.input :logo, hint: f.subcategory.logo? ? image_tag(subcategory.logo.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")	
			f.input :video
			f.input :news
			f.input :vocabulary
			f.input :quiz
			f.input :music
			f.input :grammar
		end
		f.actions
	end
	
	scope :video do |subcategories|
		 subcategories.where(:video => true)
	end
	scope :news do |subcategories|
		 subcategories.where(:news => true)
	end
	scope :vocabulary do |subcategories|
		 subcategories.where(:vocabulary => true)
	end
	scope :quiz do |subcategories|
		 subcategories.where(:quiz => true)
	end
	scope :music do |subcategories|
		 subcategories.where(:music => true)
	end
	scope :grammar do |subcategories|
		 subcategories.where(:grammar => true)
	end

end
