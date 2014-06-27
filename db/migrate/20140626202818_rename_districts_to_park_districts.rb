class RenameDistrictsToParkDistricts < ActiveRecord::Migration
  def change
    rename_table :districts, :park_districts
  end
end
