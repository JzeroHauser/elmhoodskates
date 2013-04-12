class OrderController < ApplicationController
  def purchase
    session[:shopping_cart] ||= Shopping_cart.new
    session[:shopping_cart].add_good params[:id], params[:q]
    redirect_to :root
  end

  def cancel
    session[:shopping_cart].remove_good params[:id]
    redirect_to :root
  end
end