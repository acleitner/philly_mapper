class MapElement < ActiveRecord::Base

  belongs_to :map
  belongs_to :element, polymorphic: true
end
