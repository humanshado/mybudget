class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.date :entry_date
      t.string :description
      t.decimal :outflow
      t.decimal :total_outflow

      t.timestamps
    end
  end
end
