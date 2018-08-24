class Occasion < ApplicationRecord
  has_many :restaurants

  def area_with_occasion_x_restaurants
    hash ={}
    occasion_restaurants = Restaurant.all.select {|restaurant| restaurant.occasion == self}
    area_names = occasion_restaurants.map {|restaurant| restaurant.area.name}
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
