class RecreateMapElements < ActiveRecord::Migration
  def change
    create_table :map_elements do |t|
      t.integer :map_id
      t.integer :geographic_entity_id
      t.timestamps
    end
  end
end
