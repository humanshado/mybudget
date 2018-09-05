class RemoveTotalOutflowFromExpenses < ActiveRecord::Migration[5.1]
  def change
    remove_column :expenses, :total_outflow, :decimal
  end
end
