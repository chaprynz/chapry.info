class SubcategoryController < ApplicationController
  def show
    @subcategories = Subcategory.all
    @subcategory = Subcategory.find(params[:id])
  	@posts = @subcategory.posts
  	@categories = Category.all
  end

end
