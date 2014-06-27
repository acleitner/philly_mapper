class ParkDistrict < ActiveRecord::Base
  has_many :parks
  set_rgeo_factory_for_column(:boundary, RGeo::Geographic.spherical_factory(:srid => 4326))
end
