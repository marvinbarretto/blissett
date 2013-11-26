class AddMoreDataToPeople < ActiveRecord::Migration
  def change

    add_column :people, :height, :string
    add_column :people, :photo_url, :string
    add_column :people, :photo_caption, :string

    add_column :players, :is_international, :boolean
    
  end
end
