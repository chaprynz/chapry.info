ActiveAdmin.register Category do

    permit_params :name, :image, :logo
    
    show do |t|
		attributes_table do
			row :name
			
		end
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :name
			f.input :image, hint: f.category.image? ? image_tag(category.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")	
			f.input :logo, hint: f.category.logo? ? image_tag(category.logo.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")	
		end
		f.actions
	end

end
