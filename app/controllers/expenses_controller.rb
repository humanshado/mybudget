class ExpensesController < ApplicationController

  def index
    @expenses = Expense.all
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)
    if @expense.save
      flash[:notice] = "New expense added"
      redirect_to root_path
    end
  end

  private
    def expense_params
      params.require(:expense).permit(:entry_date, :description, :outflow)
    end

end
