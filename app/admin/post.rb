ActiveAdmin.register Post do
  	permit_params :title, :image, :content, :subcategory_id, :video, :description, :shortdescription
	
	index do 
		column :title
		column :subcategory
		actions
	end

	form do |f|
		f.inputs do
			input :subcategory, label: "Subcategory"
			input :title, label: "Title"
			input :description, label: "Description"
			input :content, label: "Content"
			input :video, label: "Video"
			input :image, hint: f.post.image? ? image_tag(post.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
			
		end

		actions
	end
end
