class ChangeGeospatialDataOnGeographicEntities < ActiveRecord::Migration
  def change
    remove_column :geographic_entities, :geospatial_data
    add_column :geographic_entities, :geospatial_data, :geometry, geographic: true
  end
end
