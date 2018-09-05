class RemoveTotalInflowFromIncomes < ActiveRecord::Migration[5.1]
  def change
    remove_column :incomes, :total_inflow, :decimal
  end
end
