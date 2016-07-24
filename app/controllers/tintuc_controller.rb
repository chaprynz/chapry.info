class TintucController < ApplicationController
  def show
    category = Category.find(params[:category_id])
    @tintuc = Tintuc.find(params[:id])
    @tintucs = category.tintucs.order(created_at: :desc).page(params[:page]).per(9)
    @categories = Category.all
  end
end
