class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @is_open = @restaurant.opening_time.to_fs(:time) < Time.now.to_fs(:time) and @restaurant.closing_time.to_fs(:time) > Time.now.to_fs(:time)
    @menu = @restaurant.menu_items
  end
end
