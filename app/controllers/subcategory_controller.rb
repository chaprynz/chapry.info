class SubcategoryController < ApplicationController
  def show
     @subcategory = Subcategory.all
    @subcategory = Subcategory.find(params[:id])
  	@posts = @subcategory.posts.order(:tag).page(params[:page]).per(25)
  	@categories = Category.all
  end

end
