class AddNameToMapsAndMapElements < ActiveRecord::Migration
  def change
    add_column :maps, :name, :string
    add_column :map_elements, :name, :string
  end
end
