ActiveAdmin.register Tintuc do
    permit_params :title, :content, :video, :description, :image, :shortdescription, :a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k, :l, :m, :n, :o, :p, :q, :r
	
	index do 
		column :title
		actions
	end

	form do |f|
		f.inputs do
			input :title, label: "Title"
			input :description, label: "Description"
			input :content, label: "Content",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			input :video, label: "Video",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			input :image, hint: f.tintuc.image? ? image_tag(tintuc.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
			input :a 
			input :b
			input :c
			input :d
			input :e
			input :f
			input :g
			input :h
			input :i 
			input :j
			input :k
			input :l
			input :m
			input :n
			input :o
			input :p
			input :q
			input :r
		end

		actions
	end
end
