class PostController < ApplicationController
  def show
    subcategory = Subcategory.find(params[:subcategory_id])
  	@post = Post.find(params[:id])
  	@posts = subcategory.posts
  	@categories = Category.all
  end

end
