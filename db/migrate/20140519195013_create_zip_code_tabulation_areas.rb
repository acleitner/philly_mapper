class CreateZipCodeTabulationAreas < ActiveRecord::Migration
  def change
    create_table :zip_code_tabulation_areas do |t|
      t.integer :county_id
      t.timestamps
    end
  end
end
