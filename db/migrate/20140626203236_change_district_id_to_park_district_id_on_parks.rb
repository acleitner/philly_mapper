class ChangeDistrictIdToParkDistrictIdOnParks < ActiveRecord::Migration
  def change
    rename_column :parks, :district_id, :park_district_id
  end
end
