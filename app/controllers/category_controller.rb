class CategoryController < ApplicationController
  def index
    @categories = Category.all.order(:tag)
    @subcategories = Subcategory.all
    @tintucs = Tintuc.all
  end

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @tintucs = @category.tintucs
    @category = Category.find(params[:id])
    @subcategories = @category.subcategories
  end
  
  def video
    @categories = Category.all
    @tintucs = Tintuc.all
    @subcategories = Subcategory.all
  end
  
  def news
    @categories = Category.all
    @subcategories = Subcategory.all
    @tintucs = Tintuc.all
  end
  
  def tuvung
    @categories = Category.all
    @subcategories = Subcategory.all
    @tintucs = Tintuc.all
  end
  
  def trochoi
    @categories = Category.all
    @subcategories = Subcategory.all
    @tintucs = Tintuc.all
  end
  
  def baihat
    @categories = Category.all
    @subcategories = Subcategory.all
    @tintucs = Tintuc.all
  end
  
  def nguphap
    @categories = Category.all
    @subcategories = Subcategory.all.order(:tag)
    @tintucs = Tintuc.all
  end

end
