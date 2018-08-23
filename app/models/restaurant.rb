class Restaurant < ApplicationRecord
  belongs_to :area
  belongs_to :craving
  belongs_to :price
  belongs_to :occasion
  mount_uploader :image, ImageUploader


  def self.area_with_most_middle_eastern_restaurants
    hash ={}
    middle_eastern = Restaurant.all.select {|restaurant| restaurant.craving.id == 4}
    area_names = middle_eastern.map {|restaurant| restaurant.area.name}
    area_names.each do |area|
        if hash.include?(area)
          hash[area] += 1
        else
          hash[area] = 1
        end
    end
    hash.sort_by {|key, value| value}.last.first
  end


  def self.area_with_most_asian_restaurants
    hash ={}
    asian = Restaurant.all.select {|restaurant| restaurant.craving.id == 5}
    area_names = asian.map {|restaurant| restaurant.area.name}
    area_names.each do |area|
        if hash.include?(area)
          hash[area] += 1
        else
          hash[area] = 1
        end
    end
    hash.sort_by {|key, value| value}.last.first
  end

  def self.area_with_most_superfood_restaurants
    hash ={}
    superfood = Restaurant.all.select {|restaurant| restaurant.craving.id == 1}
    area_names = superfood.map {|restaurant| restaurant.area.name}
    area_names.each do |area|
        if hash.include?(area)
          hash[area] += 1
        else
          hash[area] = 1
        end
    end
    hash.sort_by {|key, value| value}.last.first
  end

  def self.area_with_most_greasyspoon_restaurants
    hash ={}
    greasyspoon = Restaurant.all.select {|restaurant| restaurant.craving.id == 2}
    area_names = greasyspoon.map {|restaurant| restaurant.area.name}
    area_names.each do |area|
        if hash.include?(area)
          hash[area] += 1
        else
          hash[area] = 1
        end
    end
    hash.sort_by {|key, value| value}.last.first
  end

  def self.area_with_most_boozybrunch_restaurants
    hash ={}
    boozybrunch = Restaurant.all.select {|restaurant| restaurant.craving.id == 2}
    area_names = boozybrunch.map {|restaurant| restaurant.area.name}
    area_names.each do |area|
        if hash.include?(area)
          hash[area] += 1
        else
          hash[area] = 1
        end
    end
    hash.sort_by {|key, value| value}.last.first
  end

  def self.area_with_most_cheap_restaurants
    hash ={}
    cheap = Restaurant.all.select {|restaurant| restaurant.price.id == 1}
    area_names = cheap.map {|restaurant| restaurant.area.name}
    area_names.each do |area|
        if hash.include?(area)
          hash[area] += 1
        else
          hash[area] = 1
        end
    end
    hash.sort_by {|key, value| value}.last.first
  end

  def self.area_with_most_high_end_restaurants
    hash ={}
    expensive = Restaurant.all.select {|restaurant| restaurant.price.id == 3}
    area_names = expensive.map {|restaurant| restaurant.area.name}
    area_names.each do |area|
        if hash.include?(area)
          hash[area] += 1
        else
          hash[area] = 1
        end
    end
    hash.sort_by {|key, value| value}.last.first
  end

  def self.area_with_most_mid_range_restaurants
    hash ={}
    midrange = Restaurant.all.select {|restaurant| restaurant.price.id == 2}
    area_names = midrange.map {|restaurant| restaurant.area.name}
    area_names.each do |area|
        if hash.include?(area)
          hash[area] += 1
        else
          hash[area] = 1
        end
    end
    hash.sort_by {|key, value| value}.last.first
  end

  def self.area_with_most_patio_brunch_restaurants
    hash ={}
    patio_brunch = Restaurant.all.select {|restaurant| restaurant.occasion_id == 1}
    area_names = patio_brunch.map {|restaurant| restaurant.area.name}
    area_names.each do |area|
        if hash.include?(area)
          hash[area] += 1
        else
          hash[area] = 1
        end
    end
    hash.sort_by {|key, value| value}.last.first
  end

  def self.area_with_most_bday_brunch_restaurants
    hash ={}
    bday_brunch = Restaurant.all.select {|restaurant| restaurant.occasion_id == 2}
    area_names = bday_brunch.map {|restaurant| restaurant.area.name}
    area_names.each do |area|
        if hash.include?(area)
          hash[area] += 1
        else
          hash[area] = 1
        end
    end
    hash.sort_by {|key, value| value}.last.first
  end

  def self.area_with_most_family_brunch_restaurants
    hash ={}
    family_brunch = Restaurant.all.select {|restaurant| restaurant.occasion_id == 3}
    area_names = family_brunch.map {|restaurant| restaurant.area.name}
    area_names.each do |area|
        if hash.include?(area)
          hash[area] += 1
        else
          hash[area] = 1
        end
    end
    hash.sort_by {|key, value| value}.last.first
  end

  def self.area_with_most_date_brunch_restaurants
    hash ={}
    date_brunch = Restaurant.all.select {|restaurant| restaurant.occasion_id == 4}
    area_names = date_brunch.map {|restaurant| restaurant.area.name}
    area_names.each do |area|
        if hash.include?(area)
          hash[area] += 1
        else
          hash[area] = 1
        end
    end
    hash.sort_by {|key, value| value}.last.first
  end

  def self.area_with_most_bottomless_brunch_restaurants
    hash ={}
    bottomless_brunch = Restaurant.all.select {|restaurant| restaurant.occasion_id == 5}
    area_names = bottomless_brunch.map {|restaurant| restaurant.area.name}
    area_names.each do |area|
        if hash.include?(area)
          hash[area] += 1
        else
          hash[area] = 1
        end
    end
    hash.sort_by {|key, value| value}.last.first
  end

  def self.area_with_most_casual_brunch_restaurants
    hash ={}
    casual_brunch = Restaurant.all.select {|restaurant| restaurant.occasion_id == 6}
    area_names = casual_brunch.map {|restaurant| restaurant.area.name}
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
