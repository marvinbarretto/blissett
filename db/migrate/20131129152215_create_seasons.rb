class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|

      # t.string :name
      t.integer :year_begin
      t.integer :year_end

      # League comp
      t.integer :competition_id
      t.integer :level_id

      t.timestamps
    end
  end
end
