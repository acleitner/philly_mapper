class County < ActiveRecord::Base

  has_many :map_elements, as: :element
  has_many :maps, through: :map_elements
  has_many :zip_code_tabulation_areas

  belongs_to :state

end
