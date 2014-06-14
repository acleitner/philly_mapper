class RenameLocationsToGeographicEntities < ActiveRecord::Migration
  def change
    rename_table :locations, :geographic_entities
  end
end
