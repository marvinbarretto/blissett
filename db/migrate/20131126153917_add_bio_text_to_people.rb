class AddBioTextToPeople < ActiveRecord::Migration
  def change

    add_column :people, :bio, :text

  end
end
