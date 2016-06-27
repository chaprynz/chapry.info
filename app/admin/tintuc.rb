ActiveAdmin.register Tintuc do
    permit_params :tag, :title, :content, :video, :category_id, :description, :image, :slug, :hidepage, :code, :socialshare,
    :a, :b, :c, :d, :e, :f, :g, :h, :r,
    :videoa, :videob, :videoc, :videod, :videoe, :videof, :videog, :videoh,
    :newsa, :newsb, :newsc, :newsd, :newse, :newsf, :newsg, :newsh,
    :vocabularya, :vocabularyb, :vocabularyc, :vocabularyd, :vocabularye, :vocabularyf, :vocabularyg, :vocabularyh,
    :quiza, :quizb, :quizc, :quizd, :quize, :quizf, :quizg, :quizh,
    :musica, :musicb, :musicc, :musicd, :musice, :musicf, :musich, :musicg,
    :grammara, :grammarb, :grammarc, :grammard, :grammare, :grammarf, :grammarh, :grammarg,
    :ipadhome, :ipadvideo, :ipadnews, :ipadvoc, :ipadquiz, :ipadmusic, :ipadgrammar
    
    sortable tree: false,
						sorting_attribute: :tag

	index :as => :sortable do
		label :title

		actions
	end 
	
	index do 
		column :title
		column :created_at
		actions
	end

	form do |f|
		f.inputs do
			input :title, label: "Title"
			input :slug
			input :hidepage
			input :description, label: "Description",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			input :category, label: "Category"
			input :content, label: "Content",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			input :code
			input :video, label: "Video",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			input :image, hint: f.tintuc.image? ? image_tag(tintuc.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
			input :socialshare, hint: f.tintuc.socialshare? ? image_tag(tintuc.socialshare.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
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
					panel "Ipad+Phone" do
						input :ipadhome
						input :ipadvideo
						input :ipadnews
						input :ipadvoc
						input :ipadquiz
						input :ipadmusic
						input :ipadgrammar
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
			
		end
		actions
	end
	
	scope :a do |tintucs|
		 tintucs.where(:a => true)
	end
	scope :b do |tintucs|
		 tintucs.where(:b => true)
	end
	scope :c do |tintucs|
		 tintucs.where(:c => true)
	end
	scope :d do |tintucs|
		 tintucs.where(:d => true)
	end
	scope :e do |tintucs|
		 tintucs.where(:e => true)
	end
	scope :f do |tintucs|
		 tintucs.where(:f => true)
	end
	scope :g do |tintucs|
		 tintucs.where(:g => true)
	end
	scope :h do |tintucs|
		 tintucs.where(:h => true)
	end
	scope :videoa do |tintucs|
		 tintucs.where(:videoa => true)
	end
	scope :videob do |tintucs|
		 tintucs.where(:videob => true)
	end
	scope :videoc do |tintucs|
		 tintucs.where(:videoc => true)
	end
	scope :videod do |tintucs|
		 tintucs.where(:videod => true)
	end
	scope :videoe do |tintucs|
		 tintucs.where(:videoe => true)
	end
	scope :videof do |tintucs|
		 tintucs.where(:videof => true)
	end
	scope :newsa do |tintucs|
		 tintucs.where(:newsa => true)
	end
	scope :newsb do |tintucs|
		 tintucs.where(:newsb => true)
	end
	scope :newsc do |tintucs|
		 tintucs.where(:newsc => true)
	end
	scope :newsd do |tintucs|
		 tintucs.where(:newsd => true)
	end
	scope :newse do |tintucs|
		 tintucs.where(:newse => true)
	end
	scope :newsf do |tintucs|
		 tintucs.where(:newsf => true)
	end
	scope :newsg do |tintucs|
		 tintucs.where(:newsg => true)
	end
	scope :newsh do |tintucs|
		 tintucs.where(:newsh => true)
	end	
	scope :vocabularya do |tintucs|
		 tintucs.where(:vocabularya => true)
	end
	scope :vocabularyb do |tintucs|
		 tintucs.where(:vocabularyb => true)
	end
	scope :vocabularyc do |tintucs|
		 tintucs.where(:vocabularyc => true)
	end
	scope :vocabularyd do |tintucs|
		 tintucs.where(:vocabularyd => true)
	end
	scope :vocabularye do |tintucs|
		 tintucs.where(:vocabularye => true)
	end
	scope :vocabularyf do |tintucs|
		 tintucs.where(:vocabularyf => true)
	end
	scope :vocabularyg do |tintucs|
		 tintucs.where(:vocabularyg => true)
	end
	scope :vocabularyh do |tintucs|
		 tintucs.where(:vocabularyh => true)
	end
	scope :quiza do |tintucs|
		 tintucs.where(:quiza => true)
	end
	scope :quizb do |tintucs|
		 tintucs.where(:quizb => true)
	end
	scope :quizc do |tintucs|
		 tintucs.where(:quizc => true)
	end
	scope :quizd do |tintucs|
		 tintucs.where(:quizd => true)
	end
	scope :quize do |tintucs|
		 tintucs.where(:quize => true)
	end
	scope :quizf do |tintucs|
		 tintucs.where(:quizf => true)
	end
	scope :quizg do |tintucs|
		 tintucs.where(:quizg => true)
	end
	scope :quizh do |tintucs|
		 tintucs.where(:quizh => true)
	end
	scope :musica do |tintucs|
		 tintucs.where(:musica => true)
	end
	scope :musicb do |tintucs|
		 tintucs.where(:musicb => true)
	end
	scope :musicc do |tintucs|
		 tintucs.where(:musicc => true)
	end
	scope :musicd do |tintucs|
		 tintucs.where(:musicd => true)
	end
	scope :musice do |tintucs|
		 tintucs.where(:musice => true)
	end
	scope :musicf do |tintucs|
		 tintucs.where(:musicf => true)
	end
	scope :musicg do |tintucs|
		 tintucs.where(:musicg => true)
	end
	scope :musich do |tintucs|
		 tintucs.where(:musich => true)
	end
	scope :grammara do |tintucs|
		 tintucs.where(:grammara => true)
	end
	scope :grammarb do |tintucs|
		 tintucs.where(:grammarb => true)
	end
	scope :grammarc do |tintucs|
		 tintucs.where(:grammarc => true)
	end
	scope :grammard do |tintucs|
		 tintucs.where(:grammard => true)
	end
	scope :grammare do |tintucs|
		 tintucs.where(:grammare => true)
	end
	scope :grammarf do |tintucs|
		 tintucs.where(:grammarf => true)
	end
	scope :grammarg do |tintucs|
		 tintucs.where(:grammarg => true)
	end
	scope :grammarh do |tintucs|
		 tintucs.where(:grammarh => true)
	end
	scope :ipadhome do |tintucs|
		 tintucs.where(:ipadhome => true)
	end
	scope :ipadvideo do |tintucs|
		 tintucs.where(:ipadvideo => true)
	end
	scope :ipadnews do |tintucs|
		 tintucs.where(:ipadnews => true)
	end
	scope :ipadvoc do |tintucs|
		 tintucs.where(:ipadvoc => true)
	end
	scope :ipadquiz do |tintucs|
		 tintucs.where(:ipadquiz => true)
	end
	scope :ipadmusic do |tintucs|
		 tintucs.where(:ipadmusic => true)
	end
	scope :ipadgrammar do |tintucs|
		 tintucs.where(:ipadgrammar => true)
	end
	scope :hidepage do |tintucs|
		 tintucs.where(:hidepage => true)
	end
end
