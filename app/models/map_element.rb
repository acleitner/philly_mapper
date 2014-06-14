class MapElement < ActiveRecord::Base

  belongs_to :geographic_entity
  belongs_to :map

end
