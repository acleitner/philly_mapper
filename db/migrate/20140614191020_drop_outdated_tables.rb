class DropOutdatedTables < ActiveRecord::Migration
  def change
    drop_table :counties
    drop_table :map_elements
    drop_table :states
    drop_table :zip_code_tabulation_areas
  end
end
