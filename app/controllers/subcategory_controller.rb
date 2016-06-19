class SubcategoryController < ApplicationController
  def index
    @subcategories = Subcategory.all.order(:tag)
    @posts = Post.all
  end
  
  def show
    @subcategory = Subcategory.all
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.find(params[:id])
  	@posts = @subcategory.posts.order(:tag).page(params[:page]).per(25)
  	@categories = Category.all
  end

end
