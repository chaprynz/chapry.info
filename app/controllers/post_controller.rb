class PostController < ApplicationController
  def show
    subcategory = Subcategory.find(params[:subcategory_id])
  	@post = Post.find(params[:id])
  	@posts = subcategory.posts.order(:tag).page(params[:page]).per(7)
  	@categories = Category.all
  end

  def sitemap
    @posts = Post.all
  end
end
