class Map < ActiveRecord::Base

  has_many :map_elements
  has_many :geographic_entities, :through => :map_elements

end
