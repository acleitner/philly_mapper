class GeographicEntity < ActiveRecord::Base

  has_many :map_elements
  has_many :maps, :through => :map_elements

  set_rgeo_factory_for_column(:geospatial_data, RGeo::Geographic.spherical_factory(:srid => 4326))
end
