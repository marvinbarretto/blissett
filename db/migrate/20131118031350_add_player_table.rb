class AddPlayerTable < ActiveRecord::Migration
  def change
    create_table :players do |t|
      
      t.integer :appearances
      t.integer :substitute_appearances
      t.integer :goals

      t.timestamps
    end
  end
end
