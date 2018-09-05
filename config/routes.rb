Rails.application.routes.draw do
  root "budgets#index"

  resources :budgets
  resources :incomes
  resources :expenses

end
