class ZipCodeTabulationArea < ActiveRecord::Base

  has_many :map_elements, as: :element
  has_many :maps, through: :map_elements

  belongs_to :county

end
