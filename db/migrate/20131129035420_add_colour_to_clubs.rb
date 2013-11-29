class AddColourToClubs < ActiveRecord::Migration
  def change

    add_column :clubs, :colour_hex, :string

  end
end