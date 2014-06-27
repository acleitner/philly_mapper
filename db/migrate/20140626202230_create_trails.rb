class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :name
      t.string :limits
      t.string :trail_type
      t.string :material
      t.integer :width
      t.decimal :estimated_elevation_change
      t.decimal :length
      t.geometry :geospatial_data, geographic: true
      t.integer :park_id
      t.timestamps
    end
  end
end
