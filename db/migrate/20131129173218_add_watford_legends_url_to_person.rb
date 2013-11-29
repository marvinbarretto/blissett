class AddWatfordLegendsUrlToPerson < ActiveRecord::Migration
  def change
    add_column :people, :watford_legends_url, :string
  end
end
