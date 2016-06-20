class SubcategoryController < ApplicationController
  def show
    @subcategory = Subcategory.all
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.find(params[:id])
  	@posts = @subcategory.posts.order(:tag)
  	@categories = Category.all
  end

end
