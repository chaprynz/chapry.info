class PostController < ApplicationController
  def show
    
    category = Category.find(params[:category_id])
  	@post = Post.find(params[:id])
  	@posts = category.posts.order(:tag).page(params[:page]).per(25)
  	
  	@categories = Category.all
  	
  	
  end
end
