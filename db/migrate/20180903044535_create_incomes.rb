class CreateIncomes < ActiveRecord::Migration[5.1]
  def change
    create_table :incomes do |t|
      t.date :entry_date
      t.string :description
      t.decimal :inflow
      t.decimal :total_inflow

      t.timestamps
    end
  end
end
