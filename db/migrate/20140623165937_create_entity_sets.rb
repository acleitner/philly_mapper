class CreateEntitySets < ActiveRecord::Migration
  def change
    create_table :entity_sets do |t|

      t.timestamps
    end
  end
end
