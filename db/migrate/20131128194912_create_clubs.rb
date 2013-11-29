class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|

      t.string   :name
      t.string   :badge_url
      t.integer  :place_id
      t.integer  :country_id

      t.timestamps

    end
  end
end
