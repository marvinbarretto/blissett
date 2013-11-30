class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|

      t.string   :name
      t.boolean  :is_league
      t.boolean  :is_national
      t.boolean  :is_cup
      t.boolean  :is_european
      t.boolean  :is_friendly

      t.timestamps
    end
  end
end
