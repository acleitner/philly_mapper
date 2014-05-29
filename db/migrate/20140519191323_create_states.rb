class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.string :abbreviations
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
