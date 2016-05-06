ActiveAdmin.register Category do

    permit_params :name, :image, :logo, :slug, :tag
    
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
		column :tag
		actions
	end
    show do |t|
		attributes_table do
			row :name
			
		end
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :name
			f.input :slug
		
			f.input :image, hint: f.category.image? ? image_tag(category.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")	
			f.input :logo, hint: f.category.logo? ? image_tag(category.logo.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")	
		end
		f.actions
	end

end
