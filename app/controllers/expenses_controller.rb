class ExpensesController < ApplicationController

  def index
    @expenses = Expense.where(user_id => current_user.id)
  end

  def new
    @user = User.find(params[:user_id])
    @expense = @user.expenses.new
  end

  def create
    @user = User.find(params[:user_id])
    @expense = @user.expenses.new(expense_params)
    if @expense.save
      flash[:notice] = "New expense added"
      redirect_to user_path(@user)
    end
  end

  private
    def expense_params
      params.require(:expense).permit(:entry_date, :description, :outflow)
    end

end
