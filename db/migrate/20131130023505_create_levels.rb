class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      
      t.integer :tier

      t.timestamps
    end
  end
end
