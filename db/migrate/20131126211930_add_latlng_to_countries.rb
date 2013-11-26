class AddLatlngToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :lat, :decimal, { precision: 10, scale: 6 }
    add_column :countries, :lon, :decimal, { precision: 10, scale: 6 }
  end
end
