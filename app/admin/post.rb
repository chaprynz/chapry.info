ActiveAdmin.register Post do
  	permit_params :title, :image, :content, :subcategory_id, :video, :description, :shortdescription, :slug, :tag
	
	sortable tree: false,
						sorting_attribute: :tag

	index :as => :sortable do
		label :title

		actions
	end 
	
	
	index do 
		column :title
		column :subcategory
		actions
	end

	form do |f|
		f.inputs do
			input :subcategory, label: "Subcategory"
			input :title, label: "Title"
			input :slug, label: "Slug"
			input :description, label: "Description"
			input :content, label: "Content",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			input :video, label: "Video",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			input :image, hint: f.post.image? ? image_tag(post.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
			
		end

		actions
	end
end