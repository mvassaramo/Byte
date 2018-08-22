class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def results
    if (@restaurants = Restaurant.all.select { |restaurant| restaurant.area.id == params[:area_id].to_i && restaurant.craving.id == params[:craving_id].to_i && restaurant.price.id == params[:price_id].to_i && restaurant.occasion.id == params[:occasion_id].to_i}).count > 0
      render :results
    else
      render :non_exist
    end
  end

  def non_exist
  end

  def home
  end

  def contact
  end

  def about
  end

end
