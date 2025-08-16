class CartController < ApplicationController
  def add
    session[:cart] ||= []
    session[:cart] << params[:id]
    redirect_back fallback_location: root_path
  end

  def index
  end
end
