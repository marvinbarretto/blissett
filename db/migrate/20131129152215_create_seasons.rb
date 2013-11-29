class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|

      # t.string :name
      t.integer :year_begin
      t.integer :year_end

      t.timestamps
    end
  end
end
