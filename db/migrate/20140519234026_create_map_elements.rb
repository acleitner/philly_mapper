class CreateMapElements < ActiveRecord::Migration
  def change
    create_table :map_elements do |t|
      t.integer :map_id
      t.integer :element_id
      t.string :element_type
      t.timestamps
    end
  end
end
