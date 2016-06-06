class TintucController < ApplicationController
  def index
     @tintucs = Tintuc.all.order(:tag).page(params[:page]).per(25)
     @categories = Category.all
  end

  def show
    @tintuc = Tintuc.find(params[:id])
    @tintucs = Tintuc.all
    @categories = Category.all
  end
end
