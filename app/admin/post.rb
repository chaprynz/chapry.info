ActiveAdmin.register Post do

    permit_params :title, :image, :content, :category_id, :video, :logo, :slug, :description, :tag

	sortable tree: false,
						sorting_attribute: :tag
	
	index :as => :sortable do
		label :title

		actions
	end
	index do 
		column :title
		column :category
		column :tag
		actions
	end

	form do |f|
		f.inputs do
			input :category, label: "Category"
			input :title, label: "Title"
			input :slug, label: "slug"
			input :description, label: "Description"
			input :content, label: "Content",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			input :logo, label: "Logo"
			input :video, label: "Video",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			input :image, hint: f.post.image? ? image_tag(post.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
			
		end

		actions
	end

end
