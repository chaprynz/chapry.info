class AddNewsaToTintuc < ActiveRecord::Migration
  def change
    add_column :tintucs, :newsa, :boolean
    add_column :tintucs, :newsb, :boolean
    add_column :tintucs, :newsc, :boolean
    add_column :tintucs, :newsd, :boolean
    add_column :tintucs, :newse, :boolean
    add_column :tintucs, :newsf, :boolean
    add_column :tintucs, :newsg, :boolean
    add_column :tintucs, :newsh, :boolean
    add_column :tintucs, :vocabularya, :boolean
    add_column :tintucs, :vocabularyb, :boolean
    add_column :tintucs, :vocabularyc, :boolean
    add_column :tintucs, :vocabularyd, :boolean
    add_column :tintucs, :vocabularye, :boolean
    add_column :tintucs, :vocabularyf, :boolean
    add_column :tintucs, :vocabularyg, :boolean
    add_column :tintucs, :vocabularyh, :boolean
    add_column :tintucs, :quiza, :boolean
    add_column :tintucs, :quizb, :boolean
    add_column :tintucs, :quizc, :boolean
    add_column :tintucs, :quizd, :boolean
    add_column :tintucs, :quize, :boolean
    add_column :tintucs, :quizf, :boolean
    add_column :tintucs, :quizg, :boolean
    add_column :tintucs, :quizh, :boolean
    add_column :tintucs, :musica, :boolean
    add_column :tintucs, :musicb, :boolean
    add_column :tintucs, :musicc, :boolean
    add_column :tintucs, :musicd, :boolean
    add_column :tintucs, :musice, :boolean
    add_column :tintucs, :musicf, :boolean
    add_column :tintucs, :musicg, :boolean
    add_column :tintucs, :musich, :boolean
    add_column :tintucs, :grammara, :boolean
    add_column :tintucs, :grammarb, :boolean
    add_column :tintucs, :grammarc, :boolean
    add_column :tintucs, :grammard, :boolean
    add_column :tintucs, :grammare, :boolean
    add_column :tintucs, :grammarf, :boolean
    add_column :tintucs, :grammarg, :boolean
    add_column :tintucs, :grammarh, :boolean
    add_column :tintucs, :ipadhome, :boolean
    add_column :tintucs, :ipadvideo, :boolean
    add_column :tintucs, :ipadnews, :boolean
    add_column :tintucs, :ipadvoc, :boolean
    add_column :tintucs, :ipadquiz, :boolean
    add_column :tintucs, :ipadmusic, :boolean
    add_column :tintucs, :ipadgrammar, :boolean
  end
end
