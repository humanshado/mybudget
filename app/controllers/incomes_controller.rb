class IncomesController < ApplicationController
  before_action :require_signin

  def index
    @incomes = Income.where(user_id => current_user.id)
  end

  def new
    @user = User.find(params[:user_id])
    @income = @user.incomes.new
  end

  def create
    @user = User.find(params[:user_id])
    @income = @user.incomes.new(income_params)
    if @income.save
      flash[:notice] = "New income added"
      redirect_to user_path(@user)
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @income = @user.incomes.find(params[:id])
    @income.destroy
    flash[:notice] = "Income deleted successfully!"
    redirect_to(@user)
  end


  private
    def income_params
      params.require(:income).permit(:entry_date, :description, :inflow)
    end

end
