class AddPermanentCheckForStints < ActiveRecord::Migration
  def change
    add_column :stints, :is_permanent, :boolean
  end
end
