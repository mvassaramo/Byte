class AreasController < ApplicationController

  def index
    @areas = Area.all
  end

  def show
    @area = Area.find(params[:id])
  end

  def results
    @area = Area.all.select { |area| area.id == params[:area_id].to_i }
  end

end
