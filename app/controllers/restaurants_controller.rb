class RestaurantsController < ApplicationController
  def index
    @filter_params = filter_params
    @restaurants = Restaurant.joins(:address).where("LOWER(addresses.city) LIKE ?", "%#{filter_params[:city]}%")
    @restaurants.where!("LOWER(name) LIKE ?", "%#{filter_params[:name]}%")
    @restaurants.where!("LOWER(cuisine) LIKE ?", "%#{filter_params[:cuisine]}%")

    if @filter_params[:open_only] == "1"
      time = Time.now.strftime("%H%M")
      @restaurants.where!("opening_time < ? AND closing_time > ?", time, time)
      # @restaurant.opening_time.to_fs(:time) < Time.now.to_fs(:time) and @restaurant.closing_time.to_fs(:time) > Time.now.to_fs(:time)
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @is_open = @restaurant.opening_time.to_fs(:time) < Time.now.to_fs(:time) and @restaurant.closing_time.to_fs(:time) > Time.now.to_fs(:time)
    @menu = @restaurant.menu_items
  end

  private
  def filter_params
    params.permit(:city, :name, :cuisine, :open_only)
  end
end
