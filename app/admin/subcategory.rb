ActiveAdmin.register Subcategory do
    permit_params :name, :image, :logo, :shortdescription, :description, :category_id, :a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k, :l, :m, :n, :o, :p, :q, :r
    
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
			f.input :description
			f.input :image, hint: f.subcategory.image? ? image_tag(subcategory.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")	
			f.input :logo, hint: f.subcategory.logo? ? image_tag(subcategory.logo.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")	
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
