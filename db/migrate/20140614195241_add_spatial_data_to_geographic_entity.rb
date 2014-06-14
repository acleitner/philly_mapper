class AddSpatialDataToGeographicEntity < ActiveRecord::Migration
  def change
    remove_column :geographic_entities, :latlon
    add_column :geographic_entities, :geospatial_data, :geometry, geographic: true, srid: 4326
  end
end
