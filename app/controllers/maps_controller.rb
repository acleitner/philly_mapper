class MapsController < ApplicationController
  def index
    @maps = Map.all
  end

  def new
    @geographic_entities = GeographicEntity.all
  end

  def create
    Map.create(name: params["name"])
    @maps = Map.all
  end

  def create_geographic_entity
    GeographicEntityCreator.create!(params)
  end
end
