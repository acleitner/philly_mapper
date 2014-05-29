class State < ActiveRecord::Base

  has_many :counties
  has_many :map_elements, as: :element
  has_many :maps, through: :map_elements

  belongs_to :map

end
