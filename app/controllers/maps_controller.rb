class MapsController < ApplicationController
  def index
    @maps = Map.all
    data = Jbuilder.new do |json|
      json.maps @maps do |map|
        json.id             map.id
        json.name           map.name
        json.element_count  map.map_elements.count
      end

    end.attributes!

    render 'maps/index', locals: data
  end

  def new
    render 'maps/new'
  end

  def create
    Map.create(name: params["name"])
    @maps = Map.all
    data = Jbuilder.new do |json|
      json.maps @maps do |map|
        json.id             map.id
        json.name           map.name
        json.element_count  map.map_elements.count
      end

    end.attributes!

    render 'maps/index', locals: data
    render 'maps/index'
  end
end
