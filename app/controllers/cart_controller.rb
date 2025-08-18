class CartController < ApplicationController
  def add
    session[:cart] ||= []
    session[:cart_total] ||= 0
    session[:cart] << params[:id]
    session[:cart_total] += MenuItem.find(params[:id]).price
    redirect_back fallback_location: root_path
  end

  def remove
    index = session[:cart].index(params[:id])
    session[:cart].delete_at(index) if index
    session[:cart_total] -= MenuItem.find(params[:id]).price
    redirect_back fallback_location: root_path
  end

  def clear
    session[:cart] = []
    session[:cart_total] = 0
    redirect_back fallback_location: root_path
  end

  def index
  end
end
