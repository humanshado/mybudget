class IncomesController < ApplicationController

  def index
    @incomes = Income.all
  end

  def new
    @income = Income.new
  end

  def create
    @income = Income.new(income_params)
    if @income.save
      flash[:notice] = "New income added"
      redirect_to user_path(current_user)
    end
  end

  private
    def income_params
      params.require(:income).permit(:entry_date, :description, :inflow)
    end

end
