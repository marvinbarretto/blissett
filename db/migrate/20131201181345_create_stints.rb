class CreateStints < ActiveRecord::Migration
  def change
    create_table :stints do |t|
      
      t.integer     :person_id
      t.integer     :role_id

      t.integer     :join_date
      t.integer     :leave_date
      t.integer     :fee
      
      t.integer     :bought_from
      t.integer     :sold_to

      t.timestamps

    end
  end
end
