class AddBioToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :bio, :text
  end
end
