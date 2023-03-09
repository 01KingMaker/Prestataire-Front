class RoadsController < ApplicationController
  def index
    @roads = Road.all
  end
end
