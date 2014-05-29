class Map < ActiveRecord::Base

  has_many :map_elements
  has_many :counties, :through => :map_elements, :source => :element, :source_type => 'County'
  has_many :states, :through => :map_elements, :source => :element, :source_type => 'State'
  has_many :zip_code_tabulation_areas, :through => :map_elements, :source => :element, :source_type => 'ZipCodeTabulationArea'

end
