class ShopController < ApplicationController
  def index
    @products = Product.order(:category_id)
    @categories = Category.all  
  end

  def categories
     @products = Product.where(category_id: params[:category])
     @category = Category.find(params[:category])
  end

  def finder
      @products = Product.where("name LIKE ?" ,"%#{params[:product]}%")
  end
end
