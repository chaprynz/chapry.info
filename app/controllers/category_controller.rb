class CategoryController < ApplicationController
  def index
    @categories = Category.all.order(:tag)
    @subcategories = Subcategory.all
    @tintucs = Tintuc.all
  end

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
  	@subcategories = @category.subcategories
  	
  end

end
