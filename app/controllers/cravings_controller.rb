class CravingsController < ApplicationController

  def analytics
    @cravings = Craving.all
    @restaurants = Restaurant.all
  end
end
