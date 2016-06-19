ActiveAdmin.register Category do
    permit_params :name, :description, :tag, :slug, :image,
    :video, :news, :vocabulary, :quiz, :muisc, :grammar,
    :videoa, :videob, :videoc, :videod, :videoe, :videof,
    :videog, :videoh, :newsa, :newsb, :newsc, :newsd, :newse, :newsf, :newsg, :newsh,
    :vocabularya, :vocabularyb, :vocabularyc, :vocabularyd, :vocabularye, :vocabularyf, :vocabularyg, :vocabularyh,
    :quiza, :quizb, :quizc, :quizd, :quize, :quizf, :quizg, :quizh,
    :musica, :musicb, :musicc, :musicd, :musice, :musicf, :musich, :musicg,
    :grammara, :grammarb, :grammarc, :grammard, :grammare, :grammarf, :grammarh, :grammarg,
    :a, :b, :c, :d, :e, :f, :g, :h
    
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
			f.input :description
			f.input :slug
			f.input :image, hint: f.category.image? ? image_tag(category.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")	
		end
		
		columns do
				column do
					panel "Home Page" do
						input :a 
						input :b
						input :c
						input :d
						input :e
						input :f
						input :g
						input :h
					end
				end
				column do
					panel "Topic" do
						input :video
						input :news
						input :vocabulary
						input :quiz
						input :music
						input :grammar
					end
				end
				column do
					panel "Video" do
						input :videoa
						input :videob
						input :videoc
						input :videod
						input :videoe
						input :videof
						input :videog
						input :videoh
					end
				end	
				column do
					panel "News" do
						input :newsa 
						input :newsb
						input :newsc
						input :newsd
						input :newse
						input :newsf
						input :newsg
						input :newsh
					end
				end
				column do
					panel "Vocabulary" do
						input :vocabularya 
						input :vocabularyb
						input :vocabularyc
						input :vocabularyd
						input :vocabularye
						input :vocabularyf
						input :vocabularyg
						input :vocabularyh
					end
				end
				column do
					panel "Music" do
						input :quiza 
						input :quizb
						input :quizc
						input :quizd
						input :quize
						input :quizf
						input :quizg
						input :quizh
					end
				end
				column do
					panel "Quiz" do
						input :musica 
						input :musicb
						input :musicc
						input :musicd
						input :musice
						input :musicf
						input :musicg
						input :musich
					end
				end
				column do
					panel "Grammar" do
						input :grammara 
						input :grammarb
						input :grammarc
						input :grammard
						input :grammare
						input :grammarf
						input :grammarg
						input :grammarh
					end
				end
			end
		f.actions
	end
	
	scope :video do |categories|
		 categories.where(:video => true)
	end
	scope :news do |categories|
		 categories.where(:news => true)
	end
	scope :vocabulary do |categories|
		 categories.where(:vocabulary => true)
	end
	scope :quiz do |categories|
		 categories.where(:quiz => true)
	end
	scope :music do |categories|
		 categories.where(:music => true)
	end
	scope :grammar do |categories|
		 categories.where(:grammar => true)
	end
	scope :a do |categories|
		 categories.where(:a => true)
	end
	scope :b do |categories|
		 categories.where(:b => true)
	end
	scope :c do |categories|
		 categories.where(:c => true)
	end
	scope :d do |categories|
		 categories.where(:d => true)
	end
	scope :e do |categories|
		 categories.where(:e => true)
	end
	scope :f do |categories|
		 categories.where(:f => true)
	end
	scope :g do |categories|
		 categories.where(:g => true)
	end
	scope :h do |categories|
		 categories.where(:h => true)
	end
	scope :videoa do |categories|
		 categories.where(:videoa => true)
	end
	scope :videob do |categories|
		 categories.where(:videob => true)
	end
	scope :videoc do |categories|
		 categories.where(:videoc => true)
	end
	scope :videod do |categories|
		 categories.where(:videod => true)
	end
	scope :videoe do |categories|
		 categories.where(:videoe => true)
	end
	scope :videof do |categories|
		 categories.where(:videof => true)
	end
	scope :videog do |categories|
		 categories.where(:videog => true)
	end
	scope :videoh do |categories|
		 categories.where(:videoh => true)
	end
	scope :newsa do |categories|
		 categories.where(:newsa => true)
	end
	scope :newsb do |categories|
		 categories.where(:newsb => true)
	end
	scope :newsc do |categories|
		 categories.where(:newsc => true)
	end
	scope :newsd do |categories|
		 categories.where(:newsd => true)
	end
	scope :newse do |categories|
		 categories.where(:newse => true)
	end
	scope :newsf do |categories|
		 categories.where(:newsf => true)
	end
	scope :newsg do |categories|
		 categories.where(:newsg => true)
	end
	scope :newsh do |categories|
		 categories.where(:newsh => true)
	end
	scope :vocabularya do |categories|
		 categories.where(:vocabularya => true)
	end
	scope :vocabularyb do |categories|
		 categories.where(:vocabularyb => true)
	end
	scope :vocabularyc do |categories|
		 categories.where(:vocabularyc => true)
	end
	scope :vocabularyd do |categories|
		 categories.where(:vocabularyd => true)
	end
	scope :vocabularye do |categories|
		 categories.where(:vocabularye => true)
	end
	scope :vocabularyf do |categories|
		 categories.where(:vocabularyf => true)
	end
	scope :vocabularyg do |categories|
		 categories.where(:vocabularyg => true)
	end
	scope :vocabularyh do |categories|
		 categories.where(:vocabularyh => true)
	end
	scope :quiza do |categories|
		 categories.where(:quiza => true)
	end
	scope :quizb do |categories|
		 categories.where(:quizb => true)
	end
	scope :quizc do |categories|
		 categories.where(:quizc => true)
	end
	scope :quizd do |categories|
		 categories.where(:quizd => true)
	end
	scope :quize do |categories|
		 categories.where(:quize => true)
	end
	scope :quizf do |categories|
		 categories.where(:quizf => true)
	end
	scope :quizg do |categories|
		 categories.where(:quizg => true)
	end
	scope :quizh do |categories|
		 categories.where(:quizh => true)
	end
	scope :musica do |categories|
		 categories.where(:musica => true)
	end
	scope :musicb do |categories|
		 categories.where(:musicb => true)
	end
	scope :musicc do |categories|
		 categories.where(:musicc => true)
	end
	scope :musicd do |categories|
		 categories.where(:musicd => true)
	end
	scope :musice do |categories|
		 categories.where(:musice => true)
	end
	scope :musicf do |categories|
		 categories.where(:musicf => true)
	end
	scope :musicg do |categories|
		 categories.where(:musicg => true)
	end
	scope :musich do |categories|
		 categories.where(:musich => true)
	end
	scope :grammara do |categories|
		 categories.where(:grammara => true)
	end
	scope :grammarb do |categories|
		 categories.where(:grammarb => true)
	end
	scope :grammarc do |categories|
		 categories.where(:grammarc => true)
	end
	scope :grammard do |categories|
		 categories.where(:grammard => true)
	end
	scope :grammare do |categories|
		 categories.where(:grammare => true)
	end
	scope :grammarf do |categories|
		 categories.where(:grammarf => true)
	end
	scope :grammarg do |categories|
		 categories.where(:grammarg => true)
	end
	scope :grammarh do |categories|
		 categories.where(:grammarh => true)
	end
end