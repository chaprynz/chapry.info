ActiveAdmin.register Subcategory do
    permit_params :name, :image, :logo, :shortdescription, :description, :category_id, :slug, :a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k, :l, :m, :n, :o, :p, :q, :r, :area1, :area2, :area3, :area4, :area5, :area6, :area1header, :area2header, :area3header, :area4header, :area5header, :area6header
    
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
			f.input :area1
			f.input :area2
			f.input :area3
			f.input :area4
			f.input :area5
			f.input :area6
			f.input :area1header
			f.input :area2header
			f.input :area3header
			f.input :area4header
			f.input :area5header
			f.input :area6header
		end
		f.actions
	end


end
