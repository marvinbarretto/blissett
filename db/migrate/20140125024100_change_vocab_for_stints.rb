class ChangeVocabForStints < ActiveRecord::Migration
  def change
    rename_column :stints, :from, :from
  end
end
