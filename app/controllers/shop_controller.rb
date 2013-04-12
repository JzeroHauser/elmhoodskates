class ShopController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
  end

  def categories
     @products = Product.where(category_id: params[:category])
     @category = Category.find(params[:category])
  end
end
