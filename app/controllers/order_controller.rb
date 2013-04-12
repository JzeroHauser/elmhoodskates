class OrderController < ApplicationController
  def purchase
    session[:shopping_cart] ||= Shopping_cart.new
    session[:shopping_cart].add_good params[:id], params[:q]
    redirect_to :back
  end
end