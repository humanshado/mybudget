class BudgetsController < ApplicationController
  before_action :require_user, only: [:index, :show]
end
