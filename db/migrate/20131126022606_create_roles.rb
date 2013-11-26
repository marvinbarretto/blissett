class CreateRoles < ActiveRecord::Migration
  def change

    create_table :player_types do |t|
      t.string :name
    end

    create_table :role_types do |t|
      t.string :name
    end

    create_table :roles do |t|
      t.date :from_date
      t.date :to_date
      t.integer :person_id
      t.integer :role_type_id
      t.timestamps
    end

  end
end
