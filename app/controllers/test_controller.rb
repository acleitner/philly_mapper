class TestController < ApplicationController
  def index
    @parks = Park.all.map(&:to_geojson)
    @trails = Trail.all.map(&:to_geojson)
  end
end
