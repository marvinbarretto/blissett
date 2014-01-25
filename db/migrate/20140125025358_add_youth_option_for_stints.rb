class AddYouthOptionForStints < ActiveRecord::Migration
  def change
    add_column :stints, :is_one_of_our_own, :boolean
  end
end
