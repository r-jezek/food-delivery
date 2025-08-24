class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.joins(:address)
    if filter_params[:city] != nil
      @restaurants.where!("LOWER(addresses.city) LIKE ?", "%#{Restaurant.sanitize_sql_like(filter_params[:city].downcase)}%")
    end

    if filter_params[:name] != nil
      @restaurants.where!("LOWER(name) LIKE ?", "%#{Restaurant.sanitize_sql_like(filter_params[:name].downcase)}%")
    end

    if filter_params[:cuisine] != nil
      @restaurants.where!("LOWER(cuisine) LIKE ?", "%#{Restaurant.sanitize_sql_like(filter_params[:cuisine].downcase)}%")
    end

    if filter_params[:open_only] == "1"
      time = Time.now.strftime("%H%M")
      @restaurants.where!("opening_time < ? AND closing_time > ?", time, time)
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
