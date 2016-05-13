class CategoryController < ApplicationController
  def index
    @categories = Category.all.order(:tag)
  end

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
  	@posts = @category.posts.order(:tag).page(params[:page]).per(25)
  	
  end
end
