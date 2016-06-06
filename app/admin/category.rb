ActiveAdmin.register Category do
    permit_params :name, :image, :logo, :homelogo, :tag, :shortname, :shortdescription, :slug, :a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k, :l, :m, :n, :o, :p, :q, :r
    
    sortable tree: false,
						sorting_attribute: :id
    
   index :as => :sortable do
		label :name
		
		actions
	end
    
    index do 
		column :name
		column :image
		column :logo
		column :tag
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
			f.input :name
			f.input :slug
			f.input :shortname
			f.input :homelogo
			f.input :image, hint: f.category.image? ? image_tag(category.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")	
			f.input :logo, hint: f.category.logo? ? image_tag(category.logo.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")	
			f.input :vocabulary
			f.input :grammar
			f.input :a 
			f.input :b
			f.input :c
			f.input :d
			f.input :e
			f.input :f
			f.input :g
			f.input :h
			f.input :i 
			f.input :j
			f.input :k
			f.input :l
			f.input :m
			f.input :n
			f.input :o
			f.input :p
			f.input :q
			f.input :r
		end
		f.actions
	end
end