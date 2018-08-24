class Price < ApplicationRecord
  has_many :restaurants

  def area_with_price_x_restaurants
    hash ={}
    price_restaurants = Restaurant.all.select {|restaurant| restaurant.price == self}
    area_names = price_restaurants.map {|restaurant| restaurant.area.name}
    area_names.each do |area|
        if hash.include?(area)
          hash[area] += 1
        else
          hash[area] = 1
        end
    end
    hash.sort_by {|key, value| value}.last.first
  end


end
