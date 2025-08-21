class OrderController < ApplicationController
  def index
    @order = Order.new
  end

  def create
    @address = Address.new(city: order_params[:city], area_code: order_params[:area_code], street: order_params[:street], house_number: order_params[:house_number])
    if not @address.save
      render :index, status: :unprocessable_entity
    end

    @order = Order.new(address_id: @address.id, total_price: session[:cart_total], date_ordered: Time.now)
    if not @order.save
      render :index, status: :unprocessable_entity
    else
      redirect_to root_path
    end
  end

  private
  def order_params
    params.expect(order: [ :city, :street, :area_code, :house_number, :total ])
  end
end
