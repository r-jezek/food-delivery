class CartController < ApplicationController
  def add
    session[:cart] ||= []
    session[:cart] << params[:id]
    redirect_back fallback_location: root_path
  end

  def remove
    index = session[:cart].index(params[:id])
    session[:cart].delete_at(index) if index
    redirect_back fallback_location: root_path
  end

  def index
  end
end
