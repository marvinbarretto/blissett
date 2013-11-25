class AddPlaceOfBirthDataToPeople < ActiveRecord::Migration
  def change

    create_table :countries do |t|
      t.string :name
      t.timestamps
    end

    create_table :places do |t|
      t.string :name
      t.decimal :lat, { precision: 10, scale: 6 }
      t.decimal :lon, { precision: 10, scale: 6 }
      t.timestamps
    end
    
    add_column :places, :country_id,  :integer
    
    add_column :people, :place_id,   :integer

  end
end
