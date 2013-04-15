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

  def check
      @goods = session[:shopping_cart].goods unless session[:shopping_cart].goods.nil?
      @sub = 0
  end

  def bill
     @goods = session[:shopping_cart].goods unless session[:shopping_cart].goods.nil?
     @run = 0     
     #@province = Province.where("name LIKE ?" ,"#{params[:province]}")
     @customer = Customer.create(:address => params[:street],
                                    :city => params[:city],
                                    :first_name => params[:first_name],
                                    :last_name => params[:last_name],
                                    :postal_code => params[:postal_code])
                                    #:province_id => @province.id)
  end
end

