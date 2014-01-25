class CreateStints < ActiveRecord::Migration
  def change
    create_table :stints do |t|
      
      t.integer     :person_id
      t.integer     :role_id

      t.integer     :join_date
      t.integer     :leave_date
      
      t.integer     :from
      t.integer     :bought_fee
      t.integer     :sold_to
      t.integer     :sold_fee
      
      t.timestamps

    end
  end
end
