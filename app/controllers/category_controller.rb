class CategoryController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
  	@posts = @category.posts.page(params[:page]).per(25)
  	
  end
end
