class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :date
      t.integer :competition_id
      t.integer :opposition_id
      t.integer :season_id
      
      t.integer :attendance
      t.boolean :is_home
      t.integer :home_goals
      t.integer :away_goals

      t.timestamps
    end
  end
end
