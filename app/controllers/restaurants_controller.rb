class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end


  def results
    @restaurants = Restaurant.all.select { |restaurant|
      (params[:area_id] != "" ? restaurant.area.id == params[:area_id].to_i : true) &&
      (params[:craving_id] != "" ? restaurant.craving.id == params[:craving_id].to_i : true) &&
      (params[:price_id] != "" ? restaurant.price.id == params[:price_id].to_i : true) &&
      (params[:occasion_id] != "" ? restaurant.occasion.id == params[:occasion_id].to_i : true)
      }
    if @restaurants.count > 0
      render :results
    else
      render :non_exist
    end
  end
  # def results
  #   @restaurants = Restaurant.all.select { |restaurant|
  #     restaurant.area.id == params[:area_id].to_i &&
  #     restaurant.craving.id == params[:craving_id].to_i &&
  #     restaurant.price.id == params[:price_id].to_i &&
  #     (params[:occasion_id] != "" ? restaurant.occasion.id == params[:occasion_id].to_i : true)
  #     }
  #   if @restaurants.count > 0
  #     render :results
  #   else
  #     render :non_exist
  #   end
  # end

  def non_exist
  end

  def home
  end

  def contact
  end

  def about
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.valid?

      @restaurant.save
        redirect_to restaurant_path(@restaurant)
    else
      byebug
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def delete
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  def analytics
    @restaurants = Restaurant.all
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :vibe, :website_link, :closest_tube_station, :address, :opening_hours, :speciality, :price_id, :area_id, :craving_id, :occasion_id, :image)
  end

end
