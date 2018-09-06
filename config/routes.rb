Rails.application.routes.draw do

  root 'budgets#index'

  resources :budgets
  resources :incomes
  resources :expenses
  resources :users
  resources :sessions

  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end
